SELECT *
, ROW_NUMBER() OVER (PARTITION BY [ID del Portafolio], [CodigoProveedor] ORDER BY [Valor Total Adjudicacion]) AS Fila_Comp
INTO #tempCompleto
FROM [dbo].[Prod_Secop2_Completo]

SELECT *
, ROW_NUMBER() OVER (PARTITION BY [Proceso de Compra], [Codigo Proveedor] ORDER BY [Valor del Contrato]) AS [Fila_Elect]
INTO #tempElect
FROM [dbo].[Prod_Secop2_ContratosElectronicos]

SELECT A.*
, ce.[Nombre Entidad] as 'CE_Nombre Entidad',
ce.[Nit Entidad] as 'CE_Nit Entidad',
ce.[Departamento] as 'CE_Departamento',
ce.[Ciudad] as 'CE_Ciudad',
ce.[Localización] as 'CE_Localización',
ce.[Orden] as 'CE_Orden',
ce.[Sector] as 'CE_Sector',
ce.[Rama] as 'CE_Rama',
ce.[Entidad Centralizada] as 'CE_Entidad Centralizada',
ce.[Proceso de Compra] as 'CE_Proceso de Compra',
ce.[ID Contrato] as 'CE_ID Contrato',
ce.[Referencia del Contrato] as 'CE_Referencia del Contrato',
ce.[Estado Contrato] as 'CE_Estado Contrato',
ce.[Codigo de Categoria Principal] as 'CE_Codigo de Categoria Principal',
ce.[Tipo de Contrato] as 'CE_Tipo de Contrato',
ce.[Modalidad de Contratacion] as 'CE_Modalidad de Contratacion',
ce.[Justificacion Modalidad de Contratacion] as 'CE_Justificacion Modalidad de Contratacion',
ce.[Fecha de Firma] as 'CE_Fecha de Firma',
ce.[Fecha de Inicio del Contrato] as 'CE_Fecha de Inicio del Contrato',
ce.[Fecha de Fin del Contrato] as 'CE_Fecha de Fin del Contrato',
ce.[Fecha de Inicio de Ejecucion] as 'CE_Fecha de Inicio de Ejecucion',
ce.[Fecha de Fin de Ejecucion] as 'CE_Fecha de Fin de Ejecucion',
ce.[Condiciones de Entrega] as 'CE_Condiciones de Entrega',
ce.[TipoDocProveedor] as 'CE_TipoDocProveedor',
ce.[Documento Proveedor] as 'CE_Documento Proveedor',
ce.[Proveedor Adjudicado] as 'CE_Proveedor Adjudicado',
ce.[Es Grupo] as 'CE_Es Grupo',
ce.[Es Pyme] as 'CE_Es Pyme',
ce.[Habilita Pago Adelantado] as 'CE_Habilita Pago Adelantado',
ce.[Liquidación] as 'CE_Liquidación',
ce.[Obligación Ambiental] as 'CE_Obligación Ambiental',
ce.[Obligaciones Postconsumo] as 'CE_Obligaciones Postconsumo',
ce.[Reversion] as 'CE_Reversion',
ce.[Valor del Contrato] as 'CE_Valor del Contrato',
ce.[Valor de pago adelantado] as 'CE_Valor de pago adelantado',
ce.[Valor Facturado] as 'CE_Valor Facturado',
ce.[Valor Pendiente de Pago] as 'CE_Valor Pendiente de Pago',
ce.[Valor Pagado] as 'CE_Valor Pagado',
ce.[Valor Amortizado] as 'CE_Valor Amortizado',
ce.[Valor Pendiente de Amortizacion] as 'CE_Valor Pendiente de Amortizacion',
ce.[Valor Pendiente de Ejecucion] as 'CE_Valor Pendiente de Ejecucion',
ce.[Estado BPIN] as 'CE_Estado BPIN',
ce.[Código BPIN] as 'CE_Código BPIN',
ce.[Anno BPIN] as 'CE_Anno BPIN',
ce.[Saldo CDP] as 'CE_Saldo CDP',
ce.[Saldo Vigencia] as 'CE_Saldo Vigencia',
ce.[EsPostConflicto] as 'CE_EsPostConflicto',
ce.[URLProceso] as 'CE_URLProceso',
ce.[Destino Gasto] as 'CE_Destino Gasto',
ce.[Origen de los Recursos] as 'CE_Origen de los Recursos',
ce.[Dias Adicionados] as 'CE_Dias Adicionados',
ce.[Puntos del Acuerdo] as 'CE_Puntos del Acuerdo',
ce.[Pilares del Acuerdo] as 'CE_Pilares del Acuerdo',
ce.[Nombre Representante Legal] as 'CE_Nombre Representante Legal',
ce.[Nacionalidad Representante Legal] as 'CE_Nacionalidad Representante Legal',
ce.[Tipo de Identificación Representante Legal] as 'CE_Tipo de Identificación Representante Legal',
ce.[Identificación Representante Legal] as 'CE_Identificación Representante Legal',
ce.[Género Representante Legal] as 'CE_Género Representante Legal',
ce.[Presupuesto General de la Nacion – PGN] as 'CE_Presupuesto General de la Nacion – PGN',
ce.[Sistema General de Participaciones] as 'CE_Sistema General de Participaciones',
ce.[Sistema General de Regalías] as 'CE_Sistema General de Regalías',
ce.[Recursos Propios (Alcaldías, Gobernaciones y Resguardos Indígenas)] as 'CE_Recursos Propios (Alcaldías, Gobernaciones y Resguardos Indígenas)',
ce.[Recursos de Credito] as 'CE_Recursos de Credito',
ce.[Recursos Propios] as 'CE_Recursos Propios',
ce.[Ultima Actualizacion] as 'CE_Ultima Actualizacion',
ce.[Codigo Entidad] as 'CE_Codigo Entidad',
ce.[Fecha Inicio Liquidacion] as 'CE_Fecha Inicio Liquidacion',
ce.[Fecha Fin Liquidacion] as 'CE_Fecha Fin Liquidacion',
ce.[Codigo Proveedor] as 'CE_Codigo Proveedor'
INTO [dbo].[Prod_Secop2_Cruzado]
FROM #tempCompleto A 
LEFT JOIN #tempElect ce
ON A.[ID del Portafolio] = ce.[Proceso de Compra]
AND A.[CodigoProveedor] = ce.[Codigo Proveedor]
AND A.[Fila_Comp] = ce.[Fila_Elect]