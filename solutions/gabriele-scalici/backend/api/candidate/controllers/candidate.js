'use strict';

const { parseMultipartData, sanitizeEntity } = require('strapi-utils');

module.exports = {
  async create(ctx) {
    let entity;
    if (ctx.is('multipart')) {
      const { data, files } = parseMultipartData(ctx);
      entity = await strapi.services['candidate'].create(data, { files });
      console.log(entity)
    } else {
      entity = await strapi.services['candidate'].create(ctx.request.body);
    }

    entity = sanitizeEntity(entity, { model: strapi.models['candidate'] });

    try{
        await strapi.plugins['email-designer'].services.email.sendTemplatedEmail(
            {
                to: entity.Email,
                replyTo: 'no-reply@koodit.it',
                from: 'no-reply@koodit.it',
                attachments: [],
            },
            {
                templateId: 1,
                sourceCodeToTemplateId: 1
            },
            {
                USER: {
                    nome: entity.Nome,
                    cognome: entity.Cognome,
                    email: entity.Email,
                    telefono: entity.Telefono
                }
            }
        )
    }
    catch(e){
        console.log(e)
    }

    return entity;
  },
};
