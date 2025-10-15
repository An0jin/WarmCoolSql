CREATE table "version"(
    "platform" TEXT primary key,
    "version" int Not NULL,
    "link" TEXT Not NULL
);

insert into version (platform, "version", "link") values ('android', 6,'https://play.google.com/store/apps/details?id=com.an0jin.Toneiverse');  
