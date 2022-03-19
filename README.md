# AppOracle

**TODO:**
* SELECT ok
* INSERT ok
* DOCKER
* CONFIG 
* TO JSON


## SQL
```sql
  CREATE TABLE "TESTE"."TESTE" 
   (	"NR_SEQUENCIA" NUMBER(10,0) NOT NULL ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
  NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TESTE_DATA" ;

```

## Scripts
```bash
{:ok, conn} = Jamdb.Oracle.connect([hostname: " ", port: 1521, database: " ", username:  " ", password:  " ", timeout:  15000])

Jamdb.Oracle.query(conn, 'select * from teste')

Jamdb.Oracle.query(conn, 'insert into TESTE(nr_sequencia) values (:1)', [1])

```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `app_oracle` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:app_oracle, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/app_oracle>.

