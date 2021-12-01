-- Adminer 4.8.1 MySQL 5.5.5-10.6.5-MariaDB-1:10.6.5+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `candidates`;
CREATE TABLE `candidates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL,
  `Cognome` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Telefono` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `GitHub` varchar(255) DEFAULT NULL,
  `job` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `components_options_specifiches`;
CREATE TABLE `components_options_specifiches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Chi_cerchiamo` longtext DEFAULT NULL,
  `Job_Description` longtext DEFAULT NULL,
  `Chi_Siamo` longtext DEFAULT NULL,
  `Requirements` longtext DEFAULT NULL,
  `Formazione_interna` longtext DEFAULT NULL,
  `Benefits_aziendali` longtext DEFAULT NULL,
  `RAL` longtext DEFAULT NULL,
  `Sede_di_lavoro` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `components_options_specifiches` (`id`, `Chi_cerchiamo`, `Job_Description`, `Chi_Siamo`, `Requirements`, `Formazione_interna`, `Benefits_aziendali`, `RAL`, `Sede_di_lavoro`) VALUES
(1,	'<u>Stiamo cercando un **Lead Web Developer** con esperienza lavorativa nel settore da almeno 6 anni. La figura lavorerà a stretto contatto con il project manager di riferimento per identificare gli obiettivi di progetto e assicurarsi che il team di Web Development e le tecnologie utilizzate siano allineati al raggiungimento delle milestone individuate.</u>\n\nIl candidato ideale ha spiccata leadership, è appassionato, determinato e pronto a nuove sfide. Sarà a capo del team di Web Development e si occuperà di: coordinare le figure Junior e gestire lo sviluppo dei progetti per i nostri clienti. Contribuirà inoltre attivamente al miglioramento di processi, alla ricerca di nuove tecnologie e soluzioni capaci di rendere “brillanti” i nostri risultati.\n\n“Kooding a smarter tomorrow”',	'Il **Lead Web Developer** ha le skill di un Senior Developer, dovrà essere in grado di coordinare il team di sviluppo e avere allo stesso tempo la capacità di ridurre il gap con gli altri business team.\n\\\n\\\n**Mansioni e principali responsabilità del candidato**\n\n- Coopera con il Project Manager di riferimento al fine di comprendere le necessità di business, traducendole in necessità tecniche per il team di web development.\n- Pianifica e documenta le specifiche tecniche per fornire corretti brief ai team che collaborano sul progetto.\n- Seleziona le tecnologie più appropriate alle necessità del cliente.\n- Stima l’effort necessario alla realizzazione dei progetti in collaborazione con il Project Manager e il proprio team.\n- Coordina e supporta il team di Web Development nello sviluppo, nel coding, nel testing e nel debugging di piattaforme web e sistemi e-commerce.\n- Gestisce le code review del team attraverso piattaforme e repository come Github.\n- Sviluppa secondo le logiche dell’efficienza e della scalabilità del codice.\n- Sarà un punto di riferimento per gli sviluppatori Junior del proprio team, assicurandosi che rispettino sempre gli standard qualitativi richiesti.\n- Organizza periodicamente meeting con il proprio team per individuare criticità, aree di miglioramento e costruire opportunità che migliorino l’operatività.\n- Riferisce direttamente al management per indirizzare lo sviluppo tecnologico dell’offerta di Koodit.',	'<u>Crediamo nella forza del team, nelle competenze e nella voglia di crescere di ogni “Kooder”.</u>\nCi impegniamo ogni giorno perché ognuno di noi possa diventare la miglior versione di sé stesso.\n\nSiamo una web business company che sviluppa ecosistemi digitali.\n\nProgettiamo piattaforme e-commerce, siti web e strategie omni-channel.\n\nCostruiamo soluzioni su misura per la vendita di prodotti e servizi online, mettendo la tecnologia al servizio del business.',	'Siamo alla ricerca di una persona con attitudine a: formazione continua, lavoro in team e propensione a rendersi un punto di riferimento all’interno di un’azienda in crescita.\n\n**I requisiti più importanti sono:**\n\n- Formazione universitaria. Verranno tenuti in considerazione anche candidati in possesso di diploma, se con esperienza specifica nel ruolo\n- Intraprendenza\n- Attenzione e cura nella comunicazione.\n- Attitudine al lavoro in team\n- Leadership\n- Conoscenza della lingua inglese\n- Senso di responsabilità, flessibilità e problem solving\n- Solida esperienza in web development, backend e frontend\n\nEsperienza nelle seguenti tecnologie/linguaggi:\n\n- *Javascript*\n- *PHP*\n- *HTML/CSS*\n- *Headless CMS (es: netlify, wordpress headless ecc)*\n- *Uso di framework React e Vue.js*\n- *WordPress (struttura template)*\n- *CMS e-commerce (Woocommerce, Magento)*\n- *GIT*\n- *Docker*',	'In Koodit, ci impegniamo davvero perché ogni giorno ognuno di noi possa diventare “la miglior versione di sé stesso”.\n\nPer questo motivo la formazione assume un ruolo fondamentale nella quotidianità di tutti i “Kooder”. Con questa scelta, abbiamo deciso di investire costantemente tempo e risorse per costruire piani di formazione dedicati e personalizzati a tutte le figure del nostro team.',	'Crediamo fortemente nel nostro team e nelle persone che lo formano, per questo prestiamo particolare attenzione a: strumentazione quotidiana (Computer, postazione di lavoro e altri gadget tecnologici) e attività di team-building.\n\nL’ambiente di lavoro crediamo sia molto importante, per questo il nostro headquarter di Biella è situato all’interno del Lanificio Maurizio Sella: un’area industriale riqualificata, dove respirare tradizione e innovazione. Qui è inoltre possibile usufruire di servizi extra: cucine, bar, ristorante, spogliatoi per le attività sportive e sale polivalenti.',	'Contratto full-time indeterminato – CCNL del commercio\n\n<u>Il livello di inquadramento sarà commisurato alla seniority posseduta. Range retributivo di RAL tra: 30.000 – 50.000 €</u>',	'Biella, con <u>possibilità di smart working</u> dopo un primo periodo di inserimento.\n\n*Tutte le posizioni aperte da Koodit s.r.l. sono rivolte anche ai candidati appartenenti alle Categorie Protette (L.68/99), uomini e donne (L. 903/77, L. 125/91, D. Lgs. 198/06) e a tutte le nazionalità (D. Lgs. 215/03 e 216/03).*');

DROP TABLE IF EXISTS `core_store`;
CREATE TABLE `core_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1,	'model_def_strapi::core-store',	'{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}',	'object',	NULL,	NULL),
(2,	'model_def_strapi::webhooks',	'{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}',	'object',	NULL,	NULL),
(3,	'model_def_strapi::permission',	'{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}',	'object',	NULL,	NULL),
(4,	'model_def_strapi::role',	'{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}',	'object',	NULL,	NULL),
(5,	'model_def_strapi::user',	'{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}}}',	'object',	NULL,	NULL),
(6,	'model_def_plugins::users-permissions.permission',	'{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}',	'object',	NULL,	NULL),
(7,	'model_def_plugins::users-permissions.role',	'{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}',	'object',	NULL,	NULL),
(8,	'model_def_plugins::users-permissions.user',	'{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}',	'object',	NULL,	NULL),
(9,	'model_def_plugins::upload.file',	'{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}',	'object',	NULL,	NULL),
(10,	'model_def_plugins::i18n.locale',	'{\"uid\":\"plugins::i18n.locale\",\"collectionName\":\"i18n_locales\",\"kind\":\"collectionType\",\"info\":{\"name\":\"locale\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}',	'object',	NULL,	NULL),
(11,	'plugin_users-permissions_grant',	'{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}',	'object',	'',	''),
(12,	'plugin_upload_settings',	'{\"sizeOptimization\":true,\"responsiveDimensions\":true}',	'object',	'development',	''),
(13,	'plugin_content_manager_configuration_content_types::strapi::permission',	'{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}',	'object',	'',	''),
(14,	'plugin_content_manager_configuration_content_types::strapi::role',	'{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}',	'object',	'',	''),
(15,	'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission',	'{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}',	'object',	'',	''),
(16,	'plugin_content_manager_configuration_content_types::plugins::users-permissions.user',	'{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}',	'object',	'',	''),
(17,	'plugin_content_manager_configuration_content_types::plugins::upload.file',	'{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}',	'object',	'',	''),
(18,	'plugin_i18n_default_locale',	'\"en\"',	'string',	'',	''),
(19,	'plugin_content_manager_configuration_content_types::strapi::user',	'{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"PreferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreferedLanguage\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}',	'object',	'',	''),
(20,	'plugin_content_manager_configuration_content_types::plugins::users-permissions.role',	'{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}',	'object',	'',	''),
(21,	'plugin_content_manager_configuration_content_types::plugins::i18n.locale',	'{\"uid\":\"plugins::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"created_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}',	'object',	'',	''),
(22,	'plugin_users-permissions_email',	'{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}',	'object',	'',	''),
(23,	'plugin_users-permissions_advanced',	'{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}',	'object',	'',	''),
(24,	'core_admin_auth',	'{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}',	'object',	'',	''),
(25,	'model_def_options.specifiche',	'{\"uid\":\"options.specifiche\",\"collectionName\":\"components_options_specifiches\",\"info\":{\"name\":\"Specifiche\",\"icon\":\"align-left\"},\"options\":{\"timestamps\":false},\"attributes\":{\"Chi_cerchiamo\":{\"type\":\"richtext\"},\"Job_Description\":{\"type\":\"richtext\"},\"Chi_Siamo\":{\"type\":\"richtext\"},\"Requirements\":{\"type\":\"richtext\"},\"Formazione_interna\":{\"type\":\"richtext\"},\"Benefits_aziendali\":{\"type\":\"richtext\"},\"RAL\":{\"type\":\"richtext\"},\"Sede_di_lavoro\":{\"type\":\"richtext\"}}}',	'object',	NULL,	NULL),
(26,	'plugin_content_manager_configuration_components::options.specifiche',	'{\"uid\":\"options.specifiche\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"Chi_cerchiamo\":{\"edit\":{\"label\":\"Chi_cerchiamo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Chi_cerchiamo\",\"searchable\":false,\"sortable\":false}},\"Job_Description\":{\"edit\":{\"label\":\"Job_Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Job_Description\",\"searchable\":false,\"sortable\":false}},\"Chi_Siamo\":{\"edit\":{\"label\":\"Chi_Siamo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Chi_Siamo\",\"searchable\":false,\"sortable\":false}},\"Requirements\":{\"edit\":{\"label\":\"Requirements\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Requirements\",\"searchable\":false,\"sortable\":false}},\"Formazione_interna\":{\"edit\":{\"label\":\"Formazione_interna\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formazione_interna\",\"searchable\":false,\"sortable\":false}},\"Benefits_aziendali\":{\"edit\":{\"label\":\"Benefits_aziendali\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Benefits_aziendali\",\"searchable\":false,\"sortable\":false}},\"RAL\":{\"edit\":{\"label\":\"RAL\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RAL\",\"searchable\":false,\"sortable\":false}},\"Sede_di_lavoro\":{\"edit\":{\"label\":\"Sede_di_lavoro\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Sede_di_lavoro\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"Chi_cerchiamo\",\"size\":12}],[{\"name\":\"Job_Description\",\"size\":12}],[{\"name\":\"Chi_Siamo\",\"size\":12}],[{\"name\":\"Requirements\",\"size\":12}],[{\"name\":\"Formazione_interna\",\"size\":12}],[{\"name\":\"Benefits_aziendali\",\"size\":12}],[{\"name\":\"RAL\",\"size\":12}],[{\"name\":\"Sede_di_lavoro\",\"size\":12}]],\"editRelations\":[]},\"isComponent\":true}',	'object',	'',	''),
(27,	'model_def_application::job.job',	'{\"uid\":\"application::job.job\",\"collectionName\":\"jobs\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Job\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Ruolo\":{\"type\":\"string\"},\"Specifiche\":{\"type\":\"component\",\"repeatable\":true,\"component\":\"options.specifiche\"},\"candidates\":{\"via\":\"job\",\"collection\":\"candidate\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}',	'object',	NULL,	NULL),
(28,	'plugin_content_manager_configuration_content_types::application::job.job',	'{\"uid\":\"application::job.job\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Ruolo\",\"defaultSortBy\":\"Ruolo\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Ruolo\":{\"edit\":{\"label\":\"Ruolo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ruolo\",\"searchable\":true,\"sortable\":true}},\"Specifiche\":{\"edit\":{\"label\":\"Specifiche\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Specifiche\",\"searchable\":false,\"sortable\":false}},\"candidates\":{\"edit\":{\"label\":\"Candidates\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Nome\"},\"list\":{\"label\":\"Candidates\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Ruolo\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"Ruolo\",\"size\":6}],[{\"name\":\"Specifiche\",\"size\":12}]],\"editRelations\":[\"candidates\"]}}',	'object',	'',	''),
(29,	'model_def_application::candidate.candidate',	'{\"uid\":\"application::candidate.candidate\",\"collectionName\":\"candidates\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Candidate\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"Nome\":{\"type\":\"string\",\"required\":true},\"Cognome\":{\"type\":\"string\",\"required\":true},\"Email\":{\"type\":\"email\",\"required\":true},\"Telefono\":{\"type\":\"string\",\"required\":true},\"GitHub\":{\"type\":\"string\"},\"CV\":{\"collection\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"files\"],\"plugin\":\"upload\",\"required\":true,\"pluginOptions\":{}},\"job\":{\"model\":\"job\",\"via\":\"candidates\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}',	'object',	NULL,	NULL),
(30,	'plugin_content_manager_configuration_content_types::application::candidate.candidate',	'{\"uid\":\"application::candidate.candidate\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Nome\",\"defaultSortBy\":\"Nome\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Nome\":{\"edit\":{\"label\":\"Nome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Nome\",\"searchable\":true,\"sortable\":true}},\"Cognome\":{\"edit\":{\"label\":\"Cognome\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cognome\",\"searchable\":true,\"sortable\":true}},\"Email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"Telefono\":{\"edit\":{\"label\":\"Telefono\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Telefono\",\"searchable\":true,\"sortable\":true}},\"GitHub\":{\"edit\":{\"label\":\"GitHub\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"GitHub\",\"searchable\":true,\"sortable\":true}},\"CV\":{\"edit\":{\"label\":\"CV\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CV\",\"searchable\":false,\"sortable\":false}},\"job\":{\"edit\":{\"label\":\"Job\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Ruolo\"},\"list\":{\"label\":\"Job\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Nome\",\"Cognome\",\"Email\"],\"edit\":[[{\"name\":\"Nome\",\"size\":6},{\"name\":\"Cognome\",\"size\":6}],[{\"name\":\"Email\",\"size\":6},{\"name\":\"Telefono\",\"size\":6}],[{\"name\":\"CV\",\"size\":6},{\"name\":\"GitHub\",\"size\":6}]],\"editRelations\":[\"job\"]}}',	'object',	'',	''),
(31,	'model_def_plugins::email-designer.email-template',	'{\"uid\":\"plugins::email-designer.email-template\",\"collectionName\":\"email_templates\",\"kind\":\"collectionType\",\"info\":{\"name\":\"emailTemplate\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"],\"increments\":true,\"comment\":\"\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"sourceCodeToTemplateId\":{\"type\":\"integer\",\"required\":false,\"unique\":true},\"design\":{\"type\":\"json\"},\"name\":{\"type\":\"string\"},\"subject\":{\"type\":\"string\"},\"bodyHtml\":{\"type\":\"text\"},\"bodyText\":{\"type\":\"text\"},\"enabled\":{\"type\":\"boolean\",\"default\":true},\"tags\":{\"type\":\"json\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"visible\":false,\"private\":true}}}',	'object',	NULL,	NULL),
(32,	'plugin_content_manager_configuration_content_types::plugins::email-designer.email-template',	'{\"uid\":\"plugins::email-designer.email-template\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"sourceCodeToTemplateId\":{\"edit\":{\"label\":\"SourceCodeToTemplateId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SourceCodeToTemplateId\",\"searchable\":true,\"sortable\":true}},\"design\":{\"edit\":{\"label\":\"Design\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Design\",\"searchable\":false,\"sortable\":false}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"bodyHtml\":{\"edit\":{\"label\":\"BodyHtml\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BodyHtml\",\"searchable\":true,\"sortable\":true}},\"bodyText\":{\"edit\":{\"label\":\"BodyText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BodyText\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"tags\":{\"edit\":{\"label\":\"Tags\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Tags\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"sourceCodeToTemplateId\",\"name\",\"subject\"],\"editRelations\":[],\"edit\":[[{\"name\":\"sourceCodeToTemplateId\",\"size\":4}],[{\"name\":\"design\",\"size\":12}],[{\"name\":\"name\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"bodyHtml\",\"size\":6},{\"name\":\"bodyText\",\"size\":6}],[{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"tags\",\"size\":12}]]}}',	'object',	'',	'');

DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE `email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sourceCodeToTemplateId` int(11) DEFAULT NULL,
  `design` longtext DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `bodyHtml` longtext DEFAULT NULL,
  `bodyText` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `tags` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_templates_sourceCodeToTemplateId_unique` (`sourceCodeToTemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `email_templates` (`id`, `sourceCodeToTemplateId`, `design`, `name`, `subject`, `bodyHtml`, `bodyText`, `enabled`, `tags`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1,	1,	'{\"counters\":{\"u_column\":4,\"u_row\":4,\"u_content_text\":1,\"u_content_html\":3},\"body\":{\"rows\":[{\"cells\":[1],\"columns\":[{\"contents\":[{\"type\":\"html\",\"values\":{\"html\":\"<p>Buongiorno {{=USER.nome}},</p>\\n<p>La ringraziamo per la sua candidatura.</p><br/>\\n<p><b><i>I prossimi passi?</i></b> Per completare il primo processo di selezione e permetterci di valutare le sue competenze, abbiamo avviato una code challenge che la invitiamo a svolgere accedendovi da questa GitHub Repository: <a href=\\\"https://github.com/Koodit/lead-dev-codechallenge\\\">https://github.com/Koodit/lead-dev-codechallenge</a></p><br/>\\n<p><b><i>Entro quando?</i></b> La scadenza entro la quale effettuare la Pull Request è di 15 giorni a partire da oggi.</p><br/>\\n<p><b><i>È obbligatoria la code challenge?</i></b> Si, riteniamo fondamentale conoscere il prossimo Lead Developer sotto ogni aspetto. Ci teniamo fortemente a individuare un/una persona capace di affrontare le sfide con entusiasmo e professionalità. Pertanto, tutte le candidature prive di fork e Pull Request della nostra code challenge, non verranno prese in considerazione.</p><br/>\\n<p>In attesa di ricevere il suo progetto, rimaniamo a completa disposizione per ogni eventuale chiarimento.</p><br/>\\n<p>Team Koodit</p><br/>\\n\\n<p>I suoi dati:</p><br/>\\n<p>Nome: {{=USER.nome}}</p>\\n<p>Cognome: {{=USER.cognome}}</p>\\n<p>Email: {{=USER.email}}</p>\\n<p>Telefono: {{=USER.telefono}}</p>\\n<br/>\\n<b><i>A presto!</i></b></p>\",\"containerPadding\":\"10px\",\"_meta\":{\"htmlID\":\"u_content_html_3\",\"htmlClassNames\":\"u_content_html\"},\"selectable\":true,\"draggable\":true,\"duplicatable\":true,\"deletable\":true,\"hideable\":true}}],\"values\":{\"backgroundColor\":\"\",\"padding\":\"0px\",\"border\":{},\"borderRadius\":\"0px\",\"_meta\":{\"htmlID\":\"u_column_4\",\"htmlClassNames\":\"u_column\"}}}],\"values\":{\"displayCondition\":null,\"columns\":false,\"backgroundColor\":\"\",\"columnsBackgroundColor\":\"\",\"backgroundImage\":{\"url\":\"\",\"fullWidth\":true,\"repeat\":false,\"center\":true,\"cover\":false},\"padding\":\"0px\",\"_meta\":{\"htmlID\":\"u_row_4\",\"htmlClassNames\":\"u_row\"},\"selectable\":true,\"draggable\":true,\"duplicatable\":true,\"deletable\":true,\"hideable\":true}}],\"values\":{\"textColor\":\"#000000\",\"backgroundColor\":\"#ffffff\",\"backgroundImage\":{\"url\":\"\",\"fullWidth\":true,\"repeat\":false,\"center\":true,\"cover\":false},\"contentWidth\":\"500px\",\"contentAlign\":\"center\",\"fontFamily\":{\"label\":\"Arial\",\"value\":\"arial,helvetica,sans-serif\"},\"preheaderText\":\"\",\"linkStyle\":{\"body\":true,\"linkColor\":\"#0000ee\",\"linkHoverColor\":\"#0000ee\",\"linkUnderline\":true,\"linkHoverUnderline\":true},\"_meta\":{\"htmlID\":\"u_body\",\"htmlClassNames\":\"u_body\"}}},\"schemaVersion\":6}',	'Grazie per la sua candidatura',	'Grazie per la tua candidatura, ecco i prossimi passi.. | Koodit',	'<!DOCTYPE HTML PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional //EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:o=\"urn:schemas-microsoft-com:office:office\">\n<head>\n<!--[if gte mso 9]>\n<xml>\n  <o:OfficeDocumentSettings>\n    <o:AllowPNG/>\n    <o:PixelsPerInch>96</o:PixelsPerInch>\n  </o:OfficeDocumentSettings>\n</xml>\n<![endif]-->\n  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n  <meta name=\"x-apple-disable-message-reformatting\">\n  <!--[if !mso]><!--><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"><!--<![endif]-->\n  <title></title>\n  \n    <style type=\"text/css\">\n      table, td { color: #000000; } a { color: #0000ee; text-decoration: underline; }\n@media only screen and (min-width: 520px) {\n  .u-row {\n    width: 500px !important;\n  }\n  .u-row .u-col {\n    vertical-align: top;\n  }\n\n  .u-row .u-col-100 {\n    width: 500px !important;\n  }\n\n}\n\n@media (max-width: 520px) {\n  .u-row-container {\n    max-width: 100% !important;\n    padding-left: 0px !important;\n    padding-right: 0px !important;\n  }\n  .u-row .u-col {\n    min-width: 320px !important;\n    max-width: 100% !important;\n    display: block !important;\n  }\n  .u-row {\n    width: calc(100% - 40px) !important;\n  }\n  .u-col {\n    width: 100% !important;\n  }\n  .u-col > div {\n    margin: 0 auto;\n  }\n}\nbody {\n  margin: 0;\n  padding: 0;\n}\n\ntable,\ntr,\ntd {\n  vertical-align: top;\n  border-collapse: collapse;\n}\n\np {\n  margin: 0;\n}\n\n.ie-container table,\n.mso-container table {\n  table-layout: fixed;\n}\n\n* {\n  line-height: inherit;\n}\n\na[x-apple-data-detectors=\'true\'] {\n  color: inherit !important;\n  text-decoration: none !important;\n}\n\n</style>\n  \n  \n\n</head>\n\n<body class=\"clean-body u_body\" style=\"margin: 0;padding: 0;-webkit-text-size-adjust: 100%;background-color: #ffffff;color: #000000\">\n  <!--[if IE]><div class=\"ie-container\"><![endif]-->\n  <!--[if mso]><div class=\"mso-container\"><![endif]-->\n  <table style=\"border-collapse: collapse;table-layout: fixed;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;vertical-align: top;min-width: 320px;Margin: 0 auto;background-color: #ffffff;width:100%\" cellpadding=\"0\" cellspacing=\"0\">\n  <tbody>\n  <tr style=\"vertical-align: top\">\n    <td style=\"word-break: break-word;border-collapse: collapse !important;vertical-align: top\">\n    <!--[if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td align=\"center\" style=\"background-color: #ffffff;\"><![endif]-->\n    \n\n<div class=\"u-row-container\" style=\"padding: 0px;background-color: transparent\">\n  <div class=\"u-row\" style=\"Margin: 0 auto;min-width: 320px;max-width: 500px;overflow-wrap: break-word;word-wrap: break-word;word-break: break-word;background-color: transparent;\">\n    <div style=\"border-collapse: collapse;display: table;width: 100%;background-color: transparent;\">\n      <!--[if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:500px;\"><tr style=\"background-color: transparent;\"><![endif]-->\n      \n<!--[if (mso)|(IE)]><td align=\"center\" width=\"500\" style=\"width: 500px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;border-radius: 0px;-webkit-border-radius: 0px; -moz-border-radius: 0px;\" valign=\"top\"><![endif]-->\n<div class=\"u-col u-col-100\" style=\"max-width: 320px;min-width: 500px;display: table-cell;vertical-align: top;\">\n  <div style=\"width: 100% !important;border-radius: 0px;-webkit-border-radius: 0px; -moz-border-radius: 0px;\">\n  <!--[if (!mso)&(!IE)]><!--><div style=\"padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;border-radius: 0px;-webkit-border-radius: 0px; -moz-border-radius: 0px;\"><!--<![endif]-->\n  \n<table style=\"font-family:arial,helvetica,sans-serif;\" role=\"presentation\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" border=\"0\">\n  <tbody>\n    <tr>\n      <td style=\"overflow-wrap:break-word;word-break:break-word;padding:10px;font-family:arial,helvetica,sans-serif;\" align=\"left\">\n        \n  <div>\n    <p>Buongiorno {{=USER.nome}},</p>\n<p>La ringraziamo per la sua candidatura.</p><br/>\n<p><b><i>I prossimi passi?</i></b> Per completare il primo processo di selezione e permetterci di valutare le sue competenze, abbiamo avviato una code challenge che la invitiamo a svolgere accedendovi da questa GitHub Repository: <a href=\"https://github.com/Koodit/lead-dev-codechallenge\">https://github.com/Koodit/lead-dev-codechallenge</a></p><br/>\n<p><b><i>Entro quando?</i></b> La scadenza entro la quale effettuare la Pull Request è di 15 giorni a partire da oggi.</p><br/>\n<p><b><i>È obbligatoria la code challenge?</i></b> Si, riteniamo fondamentale conoscere il prossimo Lead Developer sotto ogni aspetto. Ci teniamo fortemente a individuare un/una persona capace di affrontare le sfide con entusiasmo e professionalità. Pertanto, tutte le candidature prive di fork e Pull Request della nostra code challenge, non verranno prese in considerazione.</p><br/>\n<p>In attesa di ricevere il suo progetto, rimaniamo a completa disposizione per ogni eventuale chiarimento.</p><br/>\n<p>Team Koodit</p><br/>\n\n<p>I suoi dati:</p><br/>\n<p>Nome: {{=USER.nome}}</p>\n<p>Cognome: {{=USER.cognome}}</p>\n<p>Email: {{=USER.email}}</p>\n<p>Telefono: {{=USER.telefono}}</p>\n<br/>\n<b><i>A presto!</i></b></p>\n  </div>\n\n      </td>\n    </tr>\n  </tbody>\n</table>\n\n  <!--[if (!mso)&(!IE)]><!--></div><!--<![endif]-->\n  </div>\n</div>\n<!--[if (mso)|(IE)]></td><![endif]-->\n      <!--[if (mso)|(IE)]></tr></table></td></tr></table><![endif]-->\n    </div>\n  </div>\n</div>\n\n\n    <!--[if (mso)|(IE)]></td></tr></table><![endif]-->\n    </td>\n  </tr>\n  </tbody>\n  </table>\n  <!--[if mso]></div><![endif]-->\n  <!--[if IE]></div><![endif]-->\n</body>\n\n</html>\n',	'Buongiorno {{=USER.Nome}},\n\nLa ringraziamo per la sua candidatura.\n\nI prossimi passi? Per completare il primo processo di selezione e permetterci di valutare le sue competenze, abbiamo avviato una code challenge che la invitiamo a svolgere accedendovi da questa GitHub Repository: https://github.com/Koodit/lead-dev-codechallenge\n\nEntro quando? La scadenza entro la quale effettuare la Pull Request è di 15 giorni a partire da oggi.\n\nÈ obbligatoria la code challenge? Si, riteniamo fondamentale conoscere il prossimo Lead Developer sotto ogni aspetto. Ci teniamo fortemente a individuare un/una persona capace di affrontare le sfide con entusiasmo e professionalità. Pertanto, tutte le candidature prive di fork e Pull Request della nostra code challenge, non verranno prese in considerazione.\n\nIn attesa di ricevere il suo progetto, rimaniamo a completa disposizione per ogni eventuale chiarimento.\n\nTeam Koodit',	1,	NULL,	NULL,	NULL,	'2021-11-29 03:20:12',	'2021-11-29 03:21:37');

DROP TABLE IF EXISTS `i18n_locales`;
CREATE TABLE `i18n_locales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `i18n_locales_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `i18n_locales` (`id`, `name`, `code`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1,	'English (en)',	'en',	NULL,	NULL,	'2021-11-29 00:48:24',	'2021-11-29 00:48:24');

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Ruolo` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `jobs` (`id`, `Ruolo`, `published_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1,	'Lead Web Developer',	'2021-11-29 00:59:18',	1,	1,	'2021-11-29 00:57:39',	'2021-11-29 00:59:18');

DROP TABLE IF EXISTS `jobs_components`;
CREATE TABLE `jobs_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `job_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id_fk` (`job_id`),
  CONSTRAINT `job_id_fk` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `jobs_components` (`id`, `field`, `order`, `component_type`, `component_id`, `job_id`) VALUES
(1,	'Specifiche',	1,	'components_options_specifiches',	1,	1);

DROP TABLE IF EXISTS `strapi_administrator`;
CREATE TABLE `strapi_administrator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `preferedLanguage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `strapi_administrator` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `resetPasswordToken`, `registrationToken`, `isActive`, `blocked`, `preferedLanguage`) VALUES
(1,	'Supreme',	'Admin',	NULL,	'admin@root.local',	'$2a$10$MkudnQzY3w5C8oYQC3xW9u0r9lgmP3i8RipMA5EFol9rwRp763LWG',	NULL,	NULL,	1,	NULL,	NULL);

DROP TABLE IF EXISTS `strapi_permission`;
CREATE TABLE `strapi_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext DEFAULT NULL,
  `conditions` longtext DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `strapi_permission` (`id`, `action`, `subject`, `properties`, `conditions`, `role`, `created_at`, `updated_at`) VALUES
(1,	'plugins::upload.read',	NULL,	'{}',	'[]',	2,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(2,	'plugins::upload.assets.create',	NULL,	'{}',	'[]',	2,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(3,	'plugins::upload.assets.update',	NULL,	'{}',	'[]',	2,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(4,	'plugins::upload.assets.download',	NULL,	'{}',	'[]',	2,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(5,	'plugins::upload.assets.copy-link',	NULL,	'{}',	'[]',	2,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(6,	'plugins::upload.assets.create',	NULL,	'{}',	'[]',	3,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(7,	'plugins::upload.read',	NULL,	'{}',	'[\"admin::is-creator\"]',	3,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(8,	'plugins::upload.assets.update',	NULL,	'{}',	'[\"admin::is-creator\"]',	3,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(9,	'plugins::upload.assets.download',	NULL,	'{}',	'[]',	3,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(10,	'plugins::upload.assets.copy-link',	NULL,	'{}',	'[]',	3,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(11,	'plugins::content-manager.explorer.create',	'plugins::users-permissions.user',	'{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(12,	'plugins::content-manager.explorer.read',	'plugins::users-permissions.user',	'{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(13,	'plugins::content-manager.explorer.update',	'plugins::users-permissions.user',	'{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(15,	'plugins::content-type-builder.read',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(16,	'plugins::email.settings.read',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(17,	'plugins::upload.read',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(18,	'plugins::upload.assets.create',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(19,	'plugins::upload.assets.update',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(20,	'plugins::upload.assets.download',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(21,	'plugins::upload.assets.copy-link',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(22,	'plugins::upload.settings.read',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(23,	'plugins::i18n.locale.create',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(24,	'plugins::i18n.locale.read',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(25,	'plugins::i18n.locale.update',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(26,	'plugins::i18n.locale.delete',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(27,	'plugins::content-manager.single-types.configure-view',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(28,	'plugins::content-manager.collection-types.configure-view',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(29,	'plugins::content-manager.components.configure-layout',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(30,	'plugins::users-permissions.roles.create',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(31,	'plugins::users-permissions.roles.read',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(32,	'plugins::users-permissions.roles.update',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(33,	'plugins::users-permissions.roles.delete',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(34,	'plugins::users-permissions.providers.read',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(35,	'plugins::users-permissions.providers.update',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(36,	'plugins::users-permissions.email-templates.read',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(37,	'plugins::users-permissions.email-templates.update',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(38,	'plugins::users-permissions.advanced-settings.read',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(39,	'plugins::users-permissions.advanced-settings.update',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(40,	'admin::marketplace.read',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(41,	'admin::marketplace.plugins.install',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(42,	'admin::marketplace.plugins.uninstall',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(43,	'admin::webhooks.create',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(44,	'admin::webhooks.read',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(45,	'admin::webhooks.update',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(46,	'admin::webhooks.delete',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(47,	'admin::users.create',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(48,	'admin::users.read',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(49,	'admin::users.update',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(50,	'admin::users.delete',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(51,	'admin::roles.create',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(52,	'admin::roles.read',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(53,	'admin::roles.update',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(54,	'admin::roles.delete',	NULL,	'{}',	'[]',	1,	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(118,	'plugins::content-manager.explorer.create',	'application::candidate.candidate',	'{\"fields\":[\"Nome\",\"Cognome\",\"Email\",\"Telefono\",\"GitHub\",\"CV\",\"job\"]}',	'[]',	1,	'2021-12-01 05:10:11',	'2021-12-01 05:10:11'),
(119,	'plugins::content-manager.explorer.create',	'application::job.job',	'{\"fields\":[\"Ruolo\",\"Specifiche.Chi_cerchiamo\",\"Specifiche.Job_Description\",\"Specifiche.Chi_Siamo\",\"Specifiche.Requirements\",\"Specifiche.Formazione_interna\",\"Specifiche.Benefits_aziendali\",\"Specifiche.RAL\",\"Specifiche.Sede_di_lavoro\",\"candidates\"]}',	'[]',	1,	'2021-12-01 05:10:11',	'2021-12-01 05:10:11'),
(120,	'plugins::content-manager.explorer.read',	'application::candidate.candidate',	'{\"fields\":[\"Nome\",\"Cognome\",\"Email\",\"Telefono\",\"GitHub\",\"CV\",\"job\"]}',	'[]',	1,	'2021-12-01 05:10:11',	'2021-12-01 05:10:11'),
(121,	'plugins::content-manager.explorer.read',	'application::job.job',	'{\"fields\":[\"Ruolo\",\"Specifiche.Chi_cerchiamo\",\"Specifiche.Job_Description\",\"Specifiche.Chi_Siamo\",\"Specifiche.Requirements\",\"Specifiche.Formazione_interna\",\"Specifiche.Benefits_aziendali\",\"Specifiche.RAL\",\"Specifiche.Sede_di_lavoro\",\"candidates\"]}',	'[]',	1,	'2021-12-01 05:10:11',	'2021-12-01 05:10:11'),
(122,	'plugins::content-manager.explorer.update',	'application::candidate.candidate',	'{\"fields\":[\"Nome\",\"Cognome\",\"Email\",\"Telefono\",\"GitHub\",\"CV\",\"job\"]}',	'[]',	1,	'2021-12-01 05:10:11',	'2021-12-01 05:10:11'),
(123,	'plugins::content-manager.explorer.update',	'application::job.job',	'{\"fields\":[\"Ruolo\",\"Specifiche.Chi_cerchiamo\",\"Specifiche.Job_Description\",\"Specifiche.Chi_Siamo\",\"Specifiche.Requirements\",\"Specifiche.Formazione_interna\",\"Specifiche.Benefits_aziendali\",\"Specifiche.RAL\",\"Specifiche.Sede_di_lavoro\",\"candidates\"]}',	'[]',	1,	'2021-12-01 05:10:11',	'2021-12-01 05:10:11'),
(124,	'plugins::content-manager.explorer.delete',	'application::candidate.candidate',	'{}',	'[]',	1,	'2021-12-01 05:10:11',	'2021-12-01 05:10:11'),
(125,	'plugins::content-manager.explorer.delete',	'application::job.job',	'{}',	'[]',	1,	'2021-12-01 05:10:11',	'2021-12-01 05:10:11'),
(126,	'plugins::content-manager.explorer.delete',	'plugins::users-permissions.user',	'{}',	'[]',	1,	'2021-12-01 05:10:11',	'2021-12-01 05:10:11'),
(127,	'plugins::content-manager.explorer.publish',	'application::job.job',	'{}',	'[]',	1,	'2021-12-01 05:10:11',	'2021-12-01 05:10:11');

DROP TABLE IF EXISTS `strapi_role`;
CREATE TABLE `strapi_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `strapi_role` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1,	'Super Admin',	'strapi-super-admin',	'Super Admins can access and manage all features and settings.',	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(2,	'Editor',	'strapi-editor',	'Editors can manage and publish contents including those of other users.',	'2021-11-29 00:48:25',	'2021-11-29 00:48:25'),
(3,	'Author',	'strapi-author',	'Authors can manage the content they have created.',	'2021-11-29 00:48:25',	'2021-11-29 00:48:25');

DROP TABLE IF EXISTS `strapi_users_roles`;
CREATE TABLE `strapi_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `strapi_users_roles` (`id`, `user_id`, `role_id`) VALUES
(1,	1,	1);

DROP TABLE IF EXISTS `strapi_webhooks`;
CREATE TABLE `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `upload_file`;
CREATE TABLE `upload_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `upload_file_morph`;
CREATE TABLE `upload_file_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext DEFAULT NULL,
  `field` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `users-permissions_permission`;
CREATE TABLE `users-permissions_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`, `created_by`, `updated_by`) VALUES
(1,	'content-manager',	'collection-types',	'bulkdelete',	0,	'',	1,	NULL,	NULL),
(2,	'content-manager',	'collection-types',	'bulkdelete',	0,	'',	2,	NULL,	NULL),
(3,	'content-manager',	'collection-types',	'create',	0,	'',	1,	NULL,	NULL),
(4,	'content-manager',	'collection-types',	'create',	0,	'',	2,	NULL,	NULL),
(5,	'content-manager',	'collection-types',	'delete',	0,	'',	1,	NULL,	NULL),
(6,	'content-manager',	'collection-types',	'delete',	0,	'',	2,	NULL,	NULL),
(7,	'content-manager',	'collection-types',	'find',	0,	'',	1,	NULL,	NULL),
(8,	'content-manager',	'collection-types',	'find',	0,	'',	2,	NULL,	NULL),
(9,	'content-manager',	'collection-types',	'findone',	0,	'',	1,	NULL,	NULL),
(10,	'content-manager',	'collection-types',	'findone',	0,	'',	2,	NULL,	NULL),
(11,	'content-manager',	'collection-types',	'previewmanyrelations',	0,	'',	1,	NULL,	NULL),
(12,	'content-manager',	'collection-types',	'previewmanyrelations',	0,	'',	2,	NULL,	NULL),
(13,	'content-manager',	'collection-types',	'publish',	0,	'',	1,	NULL,	NULL),
(14,	'content-manager',	'collection-types',	'publish',	0,	'',	2,	NULL,	NULL),
(15,	'content-manager',	'collection-types',	'unpublish',	0,	'',	1,	NULL,	NULL),
(16,	'content-manager',	'collection-types',	'unpublish',	0,	'',	2,	NULL,	NULL),
(17,	'content-manager',	'collection-types',	'update',	0,	'',	1,	NULL,	NULL),
(18,	'content-manager',	'collection-types',	'update',	0,	'',	2,	NULL,	NULL),
(19,	'content-manager',	'components',	'findcomponentconfiguration',	0,	'',	1,	NULL,	NULL),
(20,	'content-manager',	'components',	'findcomponentconfiguration',	0,	'',	2,	NULL,	NULL),
(21,	'content-manager',	'components',	'findcomponents',	0,	'',	1,	NULL,	NULL),
(22,	'content-manager',	'components',	'findcomponents',	0,	'',	2,	NULL,	NULL),
(23,	'content-manager',	'components',	'updatecomponentconfiguration',	0,	'',	1,	NULL,	NULL),
(24,	'content-manager',	'components',	'updatecomponentconfiguration',	0,	'',	2,	NULL,	NULL),
(25,	'content-manager',	'content-types',	'findcontenttypeconfiguration',	0,	'',	1,	NULL,	NULL),
(26,	'content-manager',	'content-types',	'findcontenttypeconfiguration',	0,	'',	2,	NULL,	NULL),
(27,	'content-manager',	'content-types',	'findcontenttypes',	0,	'',	1,	NULL,	NULL),
(28,	'content-manager',	'content-types',	'findcontenttypes',	0,	'',	2,	NULL,	NULL),
(29,	'content-manager',	'content-types',	'findcontenttypessettings',	0,	'',	1,	NULL,	NULL),
(30,	'content-manager',	'content-types',	'findcontenttypessettings',	0,	'',	2,	NULL,	NULL),
(31,	'content-manager',	'content-types',	'updatecontenttypeconfiguration',	0,	'',	1,	NULL,	NULL),
(32,	'content-manager',	'content-types',	'updatecontenttypeconfiguration',	0,	'',	2,	NULL,	NULL),
(33,	'content-manager',	'relations',	'find',	0,	'',	1,	NULL,	NULL),
(34,	'content-manager',	'relations',	'find',	0,	'',	2,	NULL,	NULL),
(35,	'content-manager',	'single-types',	'createorupdate',	0,	'',	1,	NULL,	NULL),
(36,	'content-manager',	'single-types',	'createorupdate',	0,	'',	2,	NULL,	NULL),
(37,	'content-manager',	'single-types',	'delete',	0,	'',	1,	NULL,	NULL),
(38,	'content-manager',	'single-types',	'delete',	0,	'',	2,	NULL,	NULL),
(39,	'content-manager',	'single-types',	'find',	0,	'',	1,	NULL,	NULL),
(40,	'content-manager',	'single-types',	'find',	0,	'',	2,	NULL,	NULL),
(41,	'content-manager',	'single-types',	'publish',	0,	'',	1,	NULL,	NULL),
(42,	'content-manager',	'single-types',	'publish',	0,	'',	2,	NULL,	NULL),
(43,	'content-manager',	'single-types',	'unpublish',	0,	'',	1,	NULL,	NULL),
(44,	'content-manager',	'single-types',	'unpublish',	0,	'',	2,	NULL,	NULL),
(45,	'content-manager',	'uid',	'checkuidavailability',	0,	'',	1,	NULL,	NULL),
(46,	'content-manager',	'uid',	'checkuidavailability',	0,	'',	2,	NULL,	NULL),
(47,	'content-manager',	'uid',	'generateuid',	0,	'',	1,	NULL,	NULL),
(48,	'content-manager',	'uid',	'generateuid',	0,	'',	2,	NULL,	NULL),
(49,	'content-type-builder',	'builder',	'getreservednames',	0,	'',	1,	NULL,	NULL),
(50,	'content-type-builder',	'builder',	'getreservednames',	0,	'',	2,	NULL,	NULL),
(51,	'content-type-builder',	'componentcategories',	'deletecategory',	0,	'',	1,	NULL,	NULL),
(52,	'content-type-builder',	'componentcategories',	'deletecategory',	0,	'',	2,	NULL,	NULL),
(53,	'content-type-builder',	'componentcategories',	'editcategory',	0,	'',	1,	NULL,	NULL),
(54,	'content-type-builder',	'componentcategories',	'editcategory',	0,	'',	2,	NULL,	NULL),
(55,	'content-type-builder',	'components',	'createcomponent',	0,	'',	1,	NULL,	NULL),
(56,	'content-type-builder',	'components',	'createcomponent',	0,	'',	2,	NULL,	NULL),
(57,	'content-type-builder',	'components',	'deletecomponent',	0,	'',	1,	NULL,	NULL),
(58,	'content-type-builder',	'components',	'deletecomponent',	0,	'',	2,	NULL,	NULL),
(59,	'content-type-builder',	'components',	'getcomponent',	0,	'',	1,	NULL,	NULL),
(60,	'content-type-builder',	'components',	'getcomponent',	0,	'',	2,	NULL,	NULL),
(61,	'content-type-builder',	'components',	'getcomponents',	0,	'',	1,	NULL,	NULL),
(62,	'content-type-builder',	'components',	'getcomponents',	0,	'',	2,	NULL,	NULL),
(63,	'content-type-builder',	'components',	'updatecomponent',	0,	'',	1,	NULL,	NULL),
(64,	'content-type-builder',	'components',	'updatecomponent',	0,	'',	2,	NULL,	NULL),
(65,	'content-type-builder',	'connections',	'getconnections',	0,	'',	1,	NULL,	NULL),
(66,	'content-type-builder',	'connections',	'getconnections',	0,	'',	2,	NULL,	NULL),
(67,	'content-type-builder',	'contenttypes',	'createcontenttype',	0,	'',	1,	NULL,	NULL),
(68,	'content-type-builder',	'contenttypes',	'createcontenttype',	0,	'',	2,	NULL,	NULL),
(69,	'content-type-builder',	'contenttypes',	'deletecontenttype',	0,	'',	1,	NULL,	NULL),
(70,	'content-type-builder',	'contenttypes',	'deletecontenttype',	0,	'',	2,	NULL,	NULL),
(71,	'content-type-builder',	'contenttypes',	'getcontenttype',	0,	'',	1,	NULL,	NULL),
(72,	'content-type-builder',	'contenttypes',	'getcontenttype',	0,	'',	2,	NULL,	NULL),
(73,	'content-type-builder',	'contenttypes',	'getcontenttypes',	0,	'',	1,	NULL,	NULL),
(74,	'content-type-builder',	'contenttypes',	'getcontenttypes',	0,	'',	2,	NULL,	NULL),
(75,	'content-type-builder',	'contenttypes',	'updatecontenttype',	0,	'',	1,	NULL,	NULL),
(76,	'content-type-builder',	'contenttypes',	'updatecontenttype',	0,	'',	2,	NULL,	NULL),
(77,	'email',	'email',	'getsettings',	0,	'',	1,	NULL,	NULL),
(78,	'email',	'email',	'getsettings',	0,	'',	2,	NULL,	NULL),
(79,	'email',	'email',	'send',	0,	'',	1,	NULL,	NULL),
(80,	'email',	'email',	'send',	0,	'',	2,	NULL,	NULL),
(81,	'email',	'email',	'test',	0,	'',	1,	NULL,	NULL),
(82,	'email',	'email',	'test',	0,	'',	2,	NULL,	NULL),
(83,	'i18n',	'content-types',	'getnonlocalizedattributes',	0,	'',	1,	NULL,	NULL),
(84,	'i18n',	'content-types',	'getnonlocalizedattributes',	0,	'',	2,	NULL,	NULL),
(85,	'i18n',	'iso-locales',	'listisolocales',	0,	'',	1,	NULL,	NULL),
(86,	'i18n',	'iso-locales',	'listisolocales',	0,	'',	2,	NULL,	NULL),
(87,	'i18n',	'locales',	'createlocale',	0,	'',	1,	NULL,	NULL),
(88,	'i18n',	'locales',	'createlocale',	0,	'',	2,	NULL,	NULL),
(89,	'i18n',	'locales',	'deletelocale',	0,	'',	1,	NULL,	NULL),
(90,	'i18n',	'locales',	'deletelocale',	0,	'',	2,	NULL,	NULL),
(91,	'i18n',	'locales',	'listlocales',	0,	'',	1,	NULL,	NULL),
(92,	'i18n',	'locales',	'listlocales',	0,	'',	2,	NULL,	NULL),
(93,	'i18n',	'locales',	'updatelocale',	0,	'',	1,	NULL,	NULL),
(94,	'i18n',	'locales',	'updatelocale',	0,	'',	2,	NULL,	NULL),
(95,	'upload',	'upload',	'count',	0,	'',	1,	NULL,	NULL),
(96,	'upload',	'upload',	'count',	0,	'',	2,	NULL,	NULL),
(97,	'upload',	'upload',	'destroy',	0,	'',	1,	NULL,	NULL),
(98,	'upload',	'upload',	'destroy',	0,	'',	2,	NULL,	NULL),
(99,	'upload',	'upload',	'find',	0,	'',	1,	NULL,	NULL),
(100,	'upload',	'upload',	'find',	0,	'',	2,	NULL,	NULL),
(101,	'upload',	'upload',	'findone',	0,	'',	1,	NULL,	NULL),
(102,	'upload',	'upload',	'findone',	0,	'',	2,	NULL,	NULL),
(103,	'upload',	'upload',	'getsettings',	0,	'',	1,	NULL,	NULL),
(104,	'upload',	'upload',	'getsettings',	0,	'',	2,	NULL,	NULL),
(105,	'upload',	'upload',	'search',	0,	'',	1,	NULL,	NULL),
(106,	'upload',	'upload',	'search',	0,	'',	2,	NULL,	NULL),
(107,	'upload',	'upload',	'updatesettings',	0,	'',	1,	NULL,	NULL),
(108,	'upload',	'upload',	'updatesettings',	0,	'',	2,	NULL,	NULL),
(109,	'upload',	'upload',	'upload',	0,	'',	1,	NULL,	NULL),
(110,	'upload',	'upload',	'upload',	1,	'',	2,	NULL,	NULL),
(111,	'users-permissions',	'auth',	'callback',	0,	'',	1,	NULL,	NULL),
(112,	'users-permissions',	'auth',	'callback',	1,	'',	2,	NULL,	NULL),
(113,	'users-permissions',	'auth',	'connect',	1,	'',	1,	NULL,	NULL),
(114,	'users-permissions',	'auth',	'connect',	1,	'',	2,	NULL,	NULL),
(115,	'users-permissions',	'auth',	'emailconfirmation',	0,	'',	1,	NULL,	NULL),
(116,	'users-permissions',	'auth',	'emailconfirmation',	1,	'',	2,	NULL,	NULL),
(117,	'users-permissions',	'auth',	'forgotpassword',	0,	'',	1,	NULL,	NULL),
(118,	'users-permissions',	'auth',	'forgotpassword',	1,	'',	2,	NULL,	NULL),
(119,	'users-permissions',	'auth',	'register',	0,	'',	1,	NULL,	NULL),
(120,	'users-permissions',	'auth',	'register',	1,	'',	2,	NULL,	NULL),
(121,	'users-permissions',	'auth',	'resetpassword',	0,	'',	1,	NULL,	NULL),
(122,	'users-permissions',	'auth',	'resetpassword',	1,	'',	2,	NULL,	NULL),
(123,	'users-permissions',	'auth',	'sendemailconfirmation',	0,	'',	1,	NULL,	NULL),
(124,	'users-permissions',	'auth',	'sendemailconfirmation',	0,	'',	2,	NULL,	NULL),
(125,	'users-permissions',	'user',	'count',	0,	'',	1,	NULL,	NULL),
(126,	'users-permissions',	'user',	'count',	0,	'',	2,	NULL,	NULL),
(127,	'users-permissions',	'user',	'create',	0,	'',	1,	NULL,	NULL),
(128,	'users-permissions',	'user',	'create',	0,	'',	2,	NULL,	NULL),
(129,	'users-permissions',	'user',	'destroy',	0,	'',	1,	NULL,	NULL),
(130,	'users-permissions',	'user',	'destroy',	0,	'',	2,	NULL,	NULL),
(131,	'users-permissions',	'user',	'destroyall',	0,	'',	1,	NULL,	NULL),
(132,	'users-permissions',	'user',	'destroyall',	0,	'',	2,	NULL,	NULL),
(133,	'users-permissions',	'user',	'find',	0,	'',	1,	NULL,	NULL),
(134,	'users-permissions',	'user',	'find',	0,	'',	2,	NULL,	NULL),
(135,	'users-permissions',	'user',	'findone',	0,	'',	1,	NULL,	NULL),
(136,	'users-permissions',	'user',	'findone',	0,	'',	2,	NULL,	NULL),
(137,	'users-permissions',	'user',	'me',	1,	'',	1,	NULL,	NULL),
(138,	'users-permissions',	'user',	'me',	1,	'',	2,	NULL,	NULL),
(139,	'users-permissions',	'user',	'update',	0,	'',	1,	NULL,	NULL),
(140,	'users-permissions',	'user',	'update',	0,	'',	2,	NULL,	NULL),
(141,	'users-permissions',	'userspermissions',	'createrole',	0,	'',	1,	NULL,	NULL),
(142,	'users-permissions',	'userspermissions',	'createrole',	0,	'',	2,	NULL,	NULL),
(143,	'users-permissions',	'userspermissions',	'deleterole',	0,	'',	1,	NULL,	NULL),
(144,	'users-permissions',	'userspermissions',	'deleterole',	0,	'',	2,	NULL,	NULL),
(145,	'users-permissions',	'userspermissions',	'getadvancedsettings',	0,	'',	1,	NULL,	NULL),
(146,	'users-permissions',	'userspermissions',	'getadvancedsettings',	0,	'',	2,	NULL,	NULL),
(147,	'users-permissions',	'userspermissions',	'getemailtemplate',	0,	'',	1,	NULL,	NULL),
(148,	'users-permissions',	'userspermissions',	'getemailtemplate',	0,	'',	2,	NULL,	NULL),
(149,	'users-permissions',	'userspermissions',	'getpermissions',	0,	'',	1,	NULL,	NULL),
(150,	'users-permissions',	'userspermissions',	'getpermissions',	0,	'',	2,	NULL,	NULL),
(151,	'users-permissions',	'userspermissions',	'getpolicies',	0,	'',	1,	NULL,	NULL),
(152,	'users-permissions',	'userspermissions',	'getpolicies',	0,	'',	2,	NULL,	NULL),
(153,	'users-permissions',	'userspermissions',	'getproviders',	0,	'',	1,	NULL,	NULL),
(154,	'users-permissions',	'userspermissions',	'getproviders',	0,	'',	2,	NULL,	NULL),
(155,	'users-permissions',	'userspermissions',	'getrole',	0,	'',	1,	NULL,	NULL),
(156,	'users-permissions',	'userspermissions',	'getrole',	0,	'',	2,	NULL,	NULL),
(157,	'users-permissions',	'userspermissions',	'getroles',	0,	'',	1,	NULL,	NULL),
(158,	'users-permissions',	'userspermissions',	'getroles',	0,	'',	2,	NULL,	NULL),
(159,	'users-permissions',	'userspermissions',	'getroutes',	0,	'',	1,	NULL,	NULL),
(160,	'users-permissions',	'userspermissions',	'getroutes',	0,	'',	2,	NULL,	NULL),
(161,	'users-permissions',	'userspermissions',	'index',	0,	'',	1,	NULL,	NULL),
(162,	'users-permissions',	'userspermissions',	'index',	0,	'',	2,	NULL,	NULL),
(163,	'users-permissions',	'userspermissions',	'searchusers',	0,	'',	1,	NULL,	NULL),
(164,	'users-permissions',	'userspermissions',	'searchusers',	0,	'',	2,	NULL,	NULL),
(165,	'users-permissions',	'userspermissions',	'updateadvancedsettings',	0,	'',	1,	NULL,	NULL),
(166,	'users-permissions',	'userspermissions',	'updateadvancedsettings',	0,	'',	2,	NULL,	NULL),
(167,	'users-permissions',	'userspermissions',	'updateemailtemplate',	0,	'',	1,	NULL,	NULL),
(168,	'users-permissions',	'userspermissions',	'updateemailtemplate',	0,	'',	2,	NULL,	NULL),
(169,	'users-permissions',	'userspermissions',	'updateproviders',	0,	'',	1,	NULL,	NULL),
(170,	'users-permissions',	'userspermissions',	'updateproviders',	0,	'',	2,	NULL,	NULL),
(171,	'users-permissions',	'userspermissions',	'updaterole',	0,	'',	1,	NULL,	NULL),
(172,	'users-permissions',	'userspermissions',	'updaterole',	0,	'',	2,	NULL,	NULL),
(173,	'application',	'job',	'count',	0,	'',	1,	NULL,	NULL),
(174,	'application',	'job',	'count',	0,	'',	2,	NULL,	NULL),
(175,	'application',	'job',	'create',	0,	'',	1,	NULL,	NULL),
(176,	'application',	'job',	'create',	0,	'',	2,	NULL,	NULL),
(177,	'application',	'job',	'delete',	0,	'',	1,	NULL,	NULL),
(178,	'application',	'job',	'delete',	0,	'',	2,	NULL,	NULL),
(179,	'application',	'job',	'find',	0,	'',	1,	NULL,	NULL),
(180,	'application',	'job',	'find',	1,	'',	2,	NULL,	NULL),
(181,	'application',	'job',	'findone',	0,	'',	1,	NULL,	NULL),
(182,	'application',	'job',	'findone',	1,	'',	2,	NULL,	NULL),
(183,	'application',	'job',	'update',	0,	'',	1,	NULL,	NULL),
(184,	'application',	'job',	'update',	0,	'',	2,	NULL,	NULL),
(185,	'application',	'candidate',	'count',	0,	'',	1,	NULL,	NULL),
(186,	'application',	'candidate',	'count',	0,	'',	2,	NULL,	NULL),
(187,	'application',	'candidate',	'create',	0,	'',	1,	NULL,	NULL),
(188,	'application',	'candidate',	'create',	1,	'',	2,	NULL,	NULL),
(189,	'application',	'candidate',	'delete',	0,	'',	1,	NULL,	NULL),
(190,	'application',	'candidate',	'delete',	0,	'',	2,	NULL,	NULL),
(191,	'application',	'candidate',	'find',	0,	'',	1,	NULL,	NULL),
(192,	'application',	'candidate',	'find',	0,	'',	2,	NULL,	NULL),
(193,	'application',	'candidate',	'findone',	0,	'',	1,	NULL,	NULL),
(194,	'application',	'candidate',	'findone',	0,	'',	2,	NULL,	NULL),
(195,	'application',	'candidate',	'update',	0,	'',	1,	NULL,	NULL),
(196,	'application',	'candidate',	'update',	0,	'',	2,	NULL,	NULL),
(197,	'email-designer',	'config',	'getconfig',	0,	'',	1,	NULL,	NULL),
(198,	'email-designer',	'config',	'getconfig',	0,	'',	2,	NULL,	NULL),
(199,	'email-designer',	'designer',	'deletetemplate',	0,	'',	1,	NULL,	NULL),
(200,	'email-designer',	'designer',	'deletetemplate',	0,	'',	2,	NULL,	NULL),
(201,	'email-designer',	'designer',	'duplicatetemplate',	0,	'',	2,	NULL,	NULL),
(202,	'email-designer',	'designer',	'duplicatetemplate',	0,	'',	1,	NULL,	NULL),
(203,	'email-designer',	'designer',	'getcoremessagetype',	0,	'',	1,	NULL,	NULL),
(204,	'email-designer',	'designer',	'getcoremessagetype',	0,	'',	2,	NULL,	NULL),
(205,	'email-designer',	'designer',	'gettemplate',	0,	'',	1,	NULL,	NULL),
(206,	'email-designer',	'designer',	'gettemplate',	0,	'',	2,	NULL,	NULL),
(207,	'email-designer',	'designer',	'gettemplates',	0,	'',	1,	NULL,	NULL),
(208,	'email-designer',	'designer',	'gettemplates',	0,	'',	2,	NULL,	NULL),
(209,	'email-designer',	'designer',	'savecoremessagetype',	0,	'',	1,	NULL,	NULL),
(210,	'email-designer',	'designer',	'savecoremessagetype',	0,	'',	2,	NULL,	NULL),
(211,	'email-designer',	'designer',	'savetemplate',	0,	'',	1,	NULL,	NULL),
(212,	'email-designer',	'designer',	'savetemplate',	0,	'',	2,	NULL,	NULL);

DROP TABLE IF EXISTS `users-permissions_role`;
CREATE TABLE `users-permissions_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`, `created_by`, `updated_by`) VALUES
(1,	'Authenticated',	'Default role given to authenticated user.',	'authenticated',	NULL,	NULL),
(2,	'Public',	'Default role given to unauthenticated user.',	'public',	NULL,	NULL);

DROP TABLE IF EXISTS `users-permissions_user`;
CREATE TABLE `users-permissions_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2021-12-01 05:10:26