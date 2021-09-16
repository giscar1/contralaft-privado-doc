if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRIVADO.ACCION') and o.name = 'FK_ACCION_REFERENCE_PLAN')
alter table PRIVADO.ACCION
   drop constraint FK_ACCION_REFERENCE_PLAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRIVADO.INDICADOR') and o.name = 'FK_INDICADO_REFERENCE_ACCION')
alter table PRIVADO.INDICADOR
   drop constraint FK_INDICADO_REFERENCE_ACCION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRIVADO.INDICADORENTIDAD') and o.name = 'FK_INDICADO_REFERENCE_INDICADO')
alter table PRIVADO.INDICADORENTIDAD
   drop constraint FK_INDICADO_REFERENCE_INDICADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRIVADO.INDICADORENTIDAD') and o.name = 'FK_INDICADO_REFERENCE_ENTIDAD')
alter table PRIVADO.INDICADORENTIDAD
   drop constraint FK_INDICADO_REFERENCE_ENTIDAD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRIVADO.MENUROL') and o.name = 'FK_MENUROL_REFERENCE_MENU')
alter table PRIVADO.MENUROL
   drop constraint FK_MENUROL_REFERENCE_MENU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRIVADO.MENUROL') and o.name = 'FK_MENUROL_REFERENCE_ROL')
alter table PRIVADO.MENUROL
   drop constraint FK_MENUROL_REFERENCE_ROL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRIVADO.META') and o.name = 'FK_META_REFERENCE_INDICADO')
alter table PRIVADO.META
   drop constraint FK_META_REFERENCE_INDICADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRIVADO.PERFILROL') and o.name = 'FK_PERFILRO_REFERENCE_PERFIL')
alter table PRIVADO.PERFILROL
   drop constraint FK_PERFILRO_REFERENCE_PERFIL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRIVADO.PERFILROL') and o.name = 'FK_PERFILRO_REFERENCE_ROL')
alter table PRIVADO.PERFILROL
   drop constraint FK_PERFILRO_REFERENCE_ROL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRIVADO.USUARIO') and o.name = 'FK_USUARIO_REFERENCE_ENTIDAD')
alter table PRIVADO.USUARIO
   drop constraint FK_USUARIO_REFERENCE_ENTIDAD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRIVADO.USUARIO') and o.name = 'FK_USUARIO_REFERENCE_PERFIL')
alter table PRIVADO.USUARIO
   drop constraint FK_USUARIO_REFERENCE_PERFIL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRIVADO.ACCION')
            and   type = 'U')
   drop table PRIVADO.ACCION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRIVADO.ENTIDAD')
            and   type = 'U')
   drop table PRIVADO.ENTIDAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRIVADO.INDICADOR')
            and   type = 'U')
   drop table PRIVADO.INDICADOR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRIVADO.INDICADORENTIDAD')
            and   type = 'U')
   drop table PRIVADO.INDICADORENTIDAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRIVADO.MENU')
            and   type = 'U')
   drop table PRIVADO.MENU
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRIVADO.MENUROL')
            and   type = 'U')
   drop table PRIVADO.MENUROL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRIVADO.META')
            and   type = 'U')
   drop table PRIVADO.META
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRIVADO.PERFIL')
            and   type = 'U')
   drop table PRIVADO.PERFIL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRIVADO.PERFILROL')
            and   type = 'U')
   drop table PRIVADO.PERFILROL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRIVADO.PLANCONTRALAFT')
            and   type = 'U')
   drop table PRIVADO.PLANCONTRALAFT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRIVADO.ROL')
            and   type = 'U')
   drop table PRIVADO.ROL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRIVADO.USUARIO')
            and   type = 'U')
   drop table PRIVADO.USUARIO
go

/*==============================================================*/
/* Table: ACCION                                                */
/*==============================================================*/
create table PRIVADO.ACCION (
   N_COD_ACCION         int                  identity(1,1),
   N_COD_PLAN           int                  null,
   C_NUM_CODIGO         varchar(50)          null,
   C_DES_NOMBRE         varchar(500)         null,
   C_DES_DESCRIPCION    varchar(5000)        null,
   N_FL_ACTIVO          int                  null,
   C_USU_REGISTRO       varchar(20)          null,
   D_FEC_REGISTRO       datetime             null,
   C_USU_MODIFICACION   varchar(20)          null,
   D_FEC_MODIFICACION   datetime             null,
   constraint PK_ACCION primary key (N_COD_ACCION)
         WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
)
ON [PRIMARY]
go

/*==============================================================*/
/* Table: ENTIDAD                                               */
/*==============================================================*/
create table PRIVADO.ENTIDAD (
   N_COD_ENTIDAD        int                  identity(1,1),
   C_DES_RAZON          varchar(200)         null,
   C_COD_RUC            varchar(50)          null,
   C_DET_SIGLA          varchar(50)          null,
   C_USU_REGISTRO       varchar(50)          null,
   D_FEC_REGISTRO       datetime             null,
   N_FL_ACTIVO          int                  null,
   C_USU_MODIFICACION   varchar(20)          null,
   D_FEC_MODIFICACION   datetime             null,
   constraint PK_ENTIDAD primary key (N_COD_ENTIDAD)
)
ON [PRIMARY]
go

/*==============================================================*/
/* Table: INDICADOR                                             */
/*==============================================================*/
create table PRIVADO.INDICADOR (
   N_COD_INDICADOR      int                  identity(1,1),
   N_COD_ACCION         int                  null,
   C_DES_NOMBRE         varchar(1000)        null,
   C_DES_DETALLE        varchar(5000)        null,
   N_FL_ACTIVO          int                  null,
   C_USU_REGISTRO       varchar(20)          null,
   D_FEC_REGISTRO       datetime             null,
   C_USU_MODIFICACION   varchar(20)          null,
   D_FEC_MODIFICACION datetime             null,
   C_COD_ANHO           varchar(4)           null,
   constraint PK_INDICADOR primary key (N_COD_INDICADOR)
         WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
)
ON [PRIMARY]
go

/*==============================================================*/
/* Table: INDICADORENTIDAD                                      */
/*==============================================================*/
create table PRIVADO.INDICADORENTIDAD (
   N_COD_INDICADOR      int                  not null,
   N_COD_ENTIDAD        int                  not null,
   N_COD_ESTADO         int                  null,
   N_FL_ACTIVO          int                  not null,
   constraint PK_INDICADORENTIDAD primary key (N_COD_INDICADOR, N_COD_ENTIDAD)
)
ON [PRIMARY]
go

/*==============================================================*/
/* Table: MENU                                                  */
/*==============================================================*/
create table PRIVADO.MENU (
   N_COD_MENU           int                  identity(1,1),
   N_COD_PADRE          int                  null,
   C_DES_NOMBRE         varchar(50)          null,
   C_COD_ICON           varchar(50)          null,
   C_NOM_PAGE           varchar(50)          null,
   N_FL_ACTIVO          int                  null,
   constraint PK_MENU primary key (N_COD_MENU)
         WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
)
ON [PRIMARY]
go

/*==============================================================*/
/* Table: MENUROL                                               */
/*==============================================================*/
create table PRIVADO.MENUROL (
   N_COD_MENU           int                  null,
   N_COD_ROL            int                  null,
   N_FL_ACTIVO          int                  null
)
ON [PRIMARY]
go

/*==============================================================*/
/* Table: META                                                  */
/*==============================================================*/
create table PRIVADO.META (
   N_COD_META           int                  identity,
   N_COD_INDICADOR      int                  null,
   N_COD_ENTIDAD        int                  null,
   N_NUM_BASE           int                  null,
   C_MED_VERIFICACION   varchar(1000)        null,
   C_DET_DESCRIPCION    varchar(4000)        null,
   C_COD_DOCUMENTO      varchar(300)         null,
   C_COD_EXTENSION      varchar(10)          null,
   N_FL_ACTIVO          int                  null,
   N_COD_ESTADO         int                  null,
   C_USU_REGISTRO       varchar(50)          null,
   D_FEC_REGISTRO       datetime             null,
   C_USU_MODIFICACION   varchar(50)          null,
   D_FEC_MODIFICACION   datetime             null,
   N_COD_ESTADO_UIF     int                  null,
   constraint PK_META primary key (N_COD_META)
)
go

/*==============================================================*/
/* Table: PERFIL                                                */
/*==============================================================*/
create table PRIVADO.PERFIL (
   N_COD_PERFIL         int                  identity(1,1),
   C_DET_NOMBRE         varchar(100)         null,
   N_FL_ACTIVO          int                  null,
   C_DET_DETALLE        varchar(1000)        null,
   C_USU_REGISTRO       varchar(20)          null,
   C_USU_MODIFICACION   varchar(20)          null,
   D_FEC_REGISTRO       datetime             null,
   D_FEC_MODIFICACION   datetime             null,
   constraint PK_PERFIL primary key (N_COD_PERFIL)
         WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
)
ON [PRIMARY]
go

/*==============================================================*/
/* Table: PERFILROL                                             */
/*==============================================================*/
create table PRIVADO.PERFILROL (
   N_COD_PERFIL         int                  null,
   N_COD_ROL            int                  null,
   N_FL_ACTIVO          int                  null
)
ON [PRIMARY]
go

/*==============================================================*/
/* Table: PLANCONTRALAFT                                        */
/*==============================================================*/
create table PRIVADO.PLANCONTRALAFT (
   N_COD_PLAN           int                  identity(1,1),
   C_NOM_PLAN           varchar(300)         null,
   C_DES_DETALLE        varchar(1000)        null,
   N_COD_VERSION        int                  null,
   N_COD_ESTADO         int                  null,
   C_USU_REGISTRO       varchar(20)          null,
   D_FEC_REGISTRO       datetime             null,
   C_USU_MODIFICACION   varchar(20)          null,
   D_FEC_MODIFICACION   datetime             null,
   N_FL_ACTIVO          int                  null,
   N_COD_VIGENTE        int                  null,
   constraint PK_PLAN primary key (N_COD_PLAN)
)
go

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table PRIVADO.ROL (
   N_COD_ROL            int                  identity(1,1),
   C_DES_ROL            varchar(50)          null,
   N_FL_ACTIVO          int                  null,
   C_DET_DETALLE        varchar(1000)        null,
   C_USU_REGISTRO       varchar(20)          null,
   C_USU_MODIFICACION   varchar(20)          null,
   D_FEC_REGISTRO       datetime             null,
   D_FEC_MODIFICACION   datetime             null,
   constraint PK_ROLES primary key (N_COD_ROL)
         WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
)
ON [PRIMARY]
go

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table PRIVADO.USUARIO (
   N_COD_ID             int                  identity(1,1),
   N_COD_PERFIL         int                  null,
   N_COD_ENTIDAD        int                  null,
   C_DET_CODIGO         varchar(100)         null,
   C_DET_NOMBRE         varchar(300)         null,
   C_DET_CONTRA         varchar(500)         null,
   C_VER_CONTRA         varchar(30)          null,
   C_DET_EMAIL          varchar(300)         null,
   C_COD_DOCUMENTO      varchar(500)         null,
   C_COD_DOCUMENTOINHA  varchar(500)         null,
   C_COD_EXTENSION      varchar(10)          null,
   C_COD_EXTENSIONINHA  varchar(10)          null,
   N_FL_ACTIVO          int                  null,
   D_FEC_REGISTRO       datetime             null,
   C_USU_REGISTRO       varchar(100)         null,
   D_FEC_MODIFICACION   datetime             null,
   C_USU_MODIFICACION   varchar(100)         null,
   C_COD_DOC_ELIMINA    varchar(500)         null,
   constraint PK_USUARIO primary key (N_COD_ID)
)
ON [PRIMARY]
go

alter table PRIVADO.ACCION
   add constraint FK_ACCION_REFERENCE_PLAN foreign key (N_COD_PLAN)
      references PRIVADO.PLANCONTRALAFT (N_COD_PLAN)
go

alter table PRIVADO.INDICADOR
   add constraint FK_INDICADO_REFERENCE_ACCION foreign key (N_COD_ACCION)
      references PRIVADO.ACCION (N_COD_ACCION)
go

alter table PRIVADO.INDICADORENTIDAD
   add constraint FK_INDICADO_REFERENCE_INDICADO foreign key (N_COD_INDICADOR)
      references PRIVADO.INDICADOR (N_COD_INDICADOR)
go

alter table PRIVADO.INDICADORENTIDAD
   add constraint FK_INDICADO_REFERENCE_ENTIDAD foreign key (N_COD_ENTIDAD)
      references PRIVADO.ENTIDAD (N_COD_ENTIDAD)
go

alter table PRIVADO.MENUROL
   add constraint FK_MENUROL_REFERENCE_MENU foreign key (N_COD_MENU)
      references PRIVADO.MENU (N_COD_MENU)
go

alter table PRIVADO.MENUROL
   add constraint FK_MENUROL_REFERENCE_ROL foreign key (N_COD_ROL)
      references PRIVADO.ROL (N_COD_ROL)
go

alter table PRIVADO.META
   add constraint FK_META_REFERENCE_INDICADO foreign key (N_COD_INDICADOR, N_COD_ENTIDAD)
      references PRIVADO.INDICADORENTIDAD (N_COD_INDICADOR, N_COD_ENTIDAD)
go

alter table PRIVADO.PERFILROL
   add constraint FK_PERFILRO_REFERENCE_PERFIL foreign key (N_COD_PERFIL)
      references PRIVADO.PERFIL (N_COD_PERFIL)
go

alter table PRIVADO.PERFILROL
   add constraint FK_PERFILRO_REFERENCE_ROL foreign key (N_COD_ROL)
      references PRIVADO.ROL (N_COD_ROL)
go

alter table PRIVADO.USUARIO
   add constraint FK_USUARIO_REFERENCE_ENTIDAD foreign key (N_COD_ENTIDAD)
      references PRIVADO.ENTIDAD (N_COD_ENTIDAD)
go

alter table PRIVADO.USUARIO
   add constraint FK_USUARIO_REFERENCE_PERFIL foreign key (N_COD_PERFIL)
      references PRIVADO.PERFIL (N_COD_PERFIL)
go
