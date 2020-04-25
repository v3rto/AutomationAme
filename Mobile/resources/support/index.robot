*** Settings ***
Library     AppiumLibrary
Library     DebugLibrary
Library     Collections
Library     OperatingSystem


Resource    ./../keywords/produto_kw.robot

#Variables   ./../pages/${OS}/delete_product.yaml
Variables   ./../pages/delete_product.yaml
Variables   ./../pages/edit_product.yaml
Variables   ./../pages/new_product.yaml
Variables   ./../pages/home_product.yaml


# Variables   ./${OS}.py