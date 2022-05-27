{% macro alter_tblproperties_opensea_txns_day() -%}
{%- if target.name == 'prod'-%}
ALTER VIEW opensea.txns_day SET TBLPROPERTIES('dune.public'='true',
                                                    'dune.data_explorer.blockchains'='["ethereum","solana"]',
                                                    'dune.data_explorer.category'='abstraction',
                                                    'dune.data_explorer.abstraction.type'='project',
                                                    'dune.data_explorer.abstraction.name'='opensea',
                                                    'dune.data_explorer.contributors'='["rchen8"]');
{%- else -%}
{%- endif -%}
{%- endmacro %}