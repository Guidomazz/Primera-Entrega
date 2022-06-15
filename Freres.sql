create schema if not exists Freres;

Use Freres;

Create table if not exists cliente (
id_cliente int not null auto_increment primary key,
nombre_cliente varchar (255) not null,
apellido_cliente varchar (255) not null,
direccion_cliente varchar (255) not null,
provincia_cliente varchar (255) not null,
codigo_postal_cliente varchar (4) not null);

alter table cliente rename clientes;

create table if not exists articulos (
id_articulo int not null auto_increment primary key,
descripcion_articulos varchar (255) not null,
precio decimal(7,2));

create table if not exists sucursales(
id_sucursal int not null auto_increment primary key,
provincia_sucursal varchar(255) not null,
direccion_sucursal varchar (255) not null,
codigo_postal_sucursal varchar (4) not null);

create table if not exists pedidos_clientes (
id_pedido int not null auto_increment primary key,
id_cliente int not null,
id_articulo int not null,
id_sucursal int not null,
cantidad int not null,
foreign key (id_cliente) references clientes (id_cliente),
foreign key(id_articulo) references articulos (id_articulo),
foreign key (id_sucursal) references sucursales (id_sucursal));

create table if not exists facturas(
id_factura int not null auto_increment primary key,
id_pedido int not null,
id_cliente int not null,
fecha date,
precio_total decimal (7,2) ,
foreign key (id_pedido) references pedidos_clientes (id_pedido),
foreign key (id_cliente) references clientes (id_cliente))












    
















