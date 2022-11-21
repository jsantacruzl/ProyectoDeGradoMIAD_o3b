/****** Script for SelectTopNRows command from SSMS  ******/
SELECT count(*)
  FROM [dbo].[Test_Secop2_ContratosElectronicos]

  SELECT [ID Contrato], count(*)
  FROM [dbo].[Test_Secop2_ContratosElectronicos]
  group by [ID Contrato]
  having count(1)>= 2

 SELECT top 5 *
  FROM [dbo].[Test_Secop2_ContratosElectronicos]


SELECT  CASE WHEN [Nombre Entidad]= 'nan' THEN NULL ELSE [Nombre Entidad] END AS [Nombre Entidad],
		CASE WHEN [Nit Entidad]= 'nan' THEN NULL ELSE [Nit Entidad] END AS [Nit Entidad],
		CASE WHEN [Departamento]= 'nan' THEN NULL ELSE [Departamento] END AS [Departamento],
		CASE WHEN [Ciudad]= 'nan' THEN NULL ELSE [Ciudad] END AS [Ciudad],
		CASE WHEN [Localización]= 'nan' THEN NULL ELSE [Localización] END AS [Localización],
		CASE WHEN [Orden]= 'nan' THEN NULL ELSE [Orden] END AS [Orden],
		CASE WHEN [Sector]= 'nan' THEN NULL ELSE [Sector] END AS [Sector],
		CASE WHEN [Rama]= 'nan' THEN NULL ELSE [Rama] END AS [Rama],
		CASE WHEN [Entidad Centralizada]= 'nan' THEN NULL ELSE [Entidad Centralizada] END AS [Entidad Centralizada],
		CASE WHEN [Proceso de Compra]= 'nan' THEN NULL ELSE [Proceso de Compra] END AS [Proceso de Compra],
		CASE WHEN [ID Contrato]= 'nan' THEN NULL ELSE [ID Contrato] END AS [ID Contrato],
		CASE WHEN [Referencia del Contrato]= 'nan' THEN NULL ELSE [Referencia del Contrato] END AS [Referencia del Contrato],
		CASE WHEN [Estado Contrato]= 'nan' THEN NULL ELSE [Estado Contrato] END AS [Estado Contrato],
		CASE WHEN [Codigo de Categoria Principal]= 'nan' THEN NULL ELSE [Codigo de Categoria Principal] END AS [Codigo de Categoria Principal],
		CASE WHEN [Tipo de Contrato]= 'nan' THEN NULL ELSE [Tipo de Contrato] END AS [Tipo de Contrato],
		CASE WHEN [Modalidad de Contratacion]= 'nan' THEN NULL ELSE [Modalidad de Contratacion] END AS [Modalidad de Contratacion],
		CASE WHEN [Justificacion Modalidad de Contratacion]= 'nan' THEN NULL ELSE [Justificacion Modalidad de Contratacion] END AS [Justificacion Modalidad de Contratacion],
		
		CAST (CASE WHEN [Fecha de Firma]= 'nan' THEN NULL ELSE [Fecha de Firma] END AS DATE) AS [Fecha de Firma],
		CAST (CASE WHEN [Fecha de Inicio del Contrato]= 'nan' THEN NULL ELSE [Fecha de Inicio del Contrato] END AS DATE) AS [Fecha de Inicio del Contrato],
		CAST (CASE WHEN [Fecha de Fin del Contrato]= 'nan' THEN NULL ELSE [Fecha de Fin del Contrato] END AS DATE) AS [Fecha de Fin del Contrato],
		CAST (CASE WHEN [Fecha de Inicio de Ejecucion]= 'nan' THEN NULL ELSE [Fecha de Inicio de Ejecucion] END AS DATE) AS [Fecha de Inicio de Ejecucion],
		CAST (CASE WHEN [Fecha de Fin de Ejecucion]= 'nan' THEN NULL ELSE [Fecha de Fin de Ejecucion] END AS DATE) AS [Fecha de Fin de Ejecucion],

		CASE WHEN [Condiciones de Entrega]= 'nan' THEN NULL ELSE [Condiciones de Entrega] END AS [Condiciones de Entrega],
		CASE WHEN [TipoDocProveedor]= 'nan' THEN NULL ELSE [TipoDocProveedor] END AS [TipoDocProveedor],
		CASE WHEN [Documento Proveedor]= 'nan' THEN NULL ELSE [Documento Proveedor] END AS [Documento Proveedor],
		CASE WHEN [Proveedor Adjudicado]= 'nan' THEN NULL ELSE [Proveedor Adjudicado] END AS [Proveedor Adjudicado],
		CASE WHEN [Es Grupo]= 'nan' THEN NULL ELSE [Es Grupo] END AS [Es Grupo],
		CASE WHEN [Es Pyme]= 'nan' THEN NULL ELSE [Es Pyme] END AS [Es Pyme],
		CASE WHEN [Habilita Pago Adelantado]= 'nan' THEN NULL ELSE [Habilita Pago Adelantado] END AS [Habilita Pago Adelantado],
		CASE WHEN [Liquidación]= 'nan' THEN NULL ELSE [Liquidación] END AS [Liquidación],
		CASE WHEN [Obligación Ambiental]= 'nan' THEN NULL ELSE [Obligación Ambiental] END AS [Obligación Ambiental],
		CASE WHEN [Obligaciones Postconsumo]= 'nan' THEN NULL ELSE [Obligaciones Postconsumo] END AS [Obligaciones Postconsumo],
		CASE WHEN [Reversion]= 'nan' THEN NULL ELSE [Reversion] END AS [Reversion],
		CAST (CASE WHEN [Valor del Contrato]= 'nan' THEN NULL ELSE [Valor del Contrato] END AS BIGINT) AS [Valor del Contrato],
		CAST (CASE WHEN [Valor de pago adelantado]= 'nan' THEN NULL ELSE [Valor de pago adelantado] END AS BIGINT) AS [Valor de pago adelantado],
		CAST (CASE WHEN [Valor Facturado]= 'nan' THEN NULL ELSE [Valor Facturado] END AS BIGINT) AS [Valor Facturado],
		CAST (CASE WHEN [Valor Pendiente de Pago]= 'nan' THEN NULL ELSE [Valor Pendiente de Pago] END AS BIGINT) AS [Valor Pendiente de Pago],
		CAST (CASE WHEN [Valor Pagado]= 'nan' THEN NULL ELSE [Valor Pagado] END AS BIGINT) AS [Valor Pagado],
		CAST (CASE WHEN [Valor Amortizado]= 'nan' THEN NULL ELSE [Valor Amortizado] END AS BIGINT) AS [Valor Amortizado],
		CAST (CASE WHEN [Valor Pendiente de Amortizacion]= 'nan' THEN NULL ELSE [Valor Pendiente de Amortizacion] END AS BIGINT) AS [Valor Pendiente de Amortizacion],
		CAST (CASE WHEN [Valor Pendiente de Ejecucion]= 'nan' THEN NULL ELSE [Valor Pendiente de Ejecucion] END AS BIGINT) AS [Valor Pendiente de Ejecucion],
		CASE WHEN [Estado BPIN]= 'nan' THEN NULL ELSE [Estado BPIN] END AS [Estado BPIN],
		CASE WHEN [Código BPIN]= 'nan' THEN NULL ELSE [Código BPIN] END AS [Código BPIN],
		CASE WHEN [Anno BPIN]= 'nan' THEN NULL ELSE [Anno BPIN] END AS [Anno BPIN],
		CAST (CASE WHEN [Saldo CDP]= 'nan' THEN NULL ELSE [Saldo CDP] END AS BIGINT) AS [Saldo CDP],
		CAST (CASE WHEN [Saldo Vigencia]= 'nan' THEN NULL ELSE [Saldo Vigencia] END AS BIGINT) AS [Saldo Vigencia],
		CASE WHEN [EsPostConflicto]= 'nan' THEN NULL ELSE [EsPostConflicto] END AS [EsPostConflicto],
		CASE WHEN [URLProceso]= 'nan' THEN NULL ELSE [URLProceso] END AS [URLProceso],
		CASE WHEN [Destino Gasto]= 'nan' THEN NULL ELSE [Destino Gasto] END AS [Destino Gasto],
		CASE WHEN [Origen de los Recursos]= 'nan' THEN NULL ELSE [Origen de los Recursos] END AS [Origen de los Recursos],
		CAST (CASE WHEN [Dias Adicionados]= 'nan' THEN NULL ELSE [Dias Adicionados] END AS INT) AS [Dias Adicionados],
		CASE WHEN [Puntos del Acuerdo]= 'nan' THEN NULL ELSE [Puntos del Acuerdo] END AS [Puntos del Acuerdo],
		CASE WHEN [Pilares del Acuerdo]= 'nan' THEN NULL ELSE [Pilares del Acuerdo] END AS [Pilares del Acuerdo],
		CASE WHEN [Nombre Representante Legal]= 'nan' THEN NULL ELSE [Nombre Representante Legal] END AS [Nombre Representante Legal],
		CASE WHEN [Nacionalidad Representante Legal]= 'nan' THEN NULL ELSE [Nacionalidad Representante Legal] END AS [Nacionalidad Representante Legal],
		CASE WHEN [Tipo de Identificación Representante Legal]= 'nan' THEN NULL ELSE [Tipo de Identificación Representante Legal] END AS [Tipo de Identificación Representante Legal],
		CASE WHEN [Identificación Representante Legal]= 'nan' THEN NULL ELSE [Identificación Representante Legal] END AS [Identificación Representante Legal],
		CASE WHEN [Género Representante Legal]= 'nan' THEN NULL ELSE [Género Representante Legal] END AS [Género Representante Legal],
		CAST (CASE WHEN [Presupuesto General de la Nacion – PGN]= 'nan' THEN NULL ELSE [Presupuesto General de la Nacion – PGN] END AS BIGINT) AS [Presupuesto General de la Nacion – PGN],
		CAST (CASE WHEN [Sistema General de Participaciones]= 'nan' THEN NULL ELSE [Sistema General de Participaciones] END AS BIGINT) AS [Sistema General de Participaciones],
		CAST (CASE WHEN [Sistema General de Regalías]= 'nan' THEN NULL ELSE [Sistema General de Regalías] END AS BIGINT) AS [Sistema General de Regalías],
		CAST (CASE WHEN [Recursos Propios (Alcaldías, Gobernaciones y Resguardos Indígenas)]= 'nan' THEN NULL ELSE [Recursos Propios (Alcaldías, Gobernaciones y Resguardos Indígenas)] END AS BIGINT) AS [Recursos Propios (Alcaldías, Gobernaciones y Resguardos Indígenas)],
		CAST (CASE WHEN [Recursos de Credito]= 'nan' THEN NULL ELSE [Recursos de Credito] END  AS BIGINT) AS [Recursos de Credito],
		CAST (CASE WHEN [Recursos Propios]= 'nan' THEN NULL ELSE [Recursos Propios] END AS BIGINT) AS [Recursos Propios],
		CAST (CASE WHEN [Ultima Actualizacion]= 'nan' THEN NULL ELSE [Ultima Actualizacion] END AS DATE) AS [Ultima Actualizacion],
		CASE WHEN [Codigo Entidad]= 'nan' THEN NULL ELSE [Codigo Entidad] END AS [Codigo Entidad],
		CAST (CASE WHEN [Fecha Inicio Liquidacion]= 'nan' THEN NULL ELSE [Fecha Inicio Liquidacion] END AS DATE) AS [Fecha Inicio Liquidacion],
		CAST (CASE WHEN [Fecha Fin Liquidacion]= 'nan' THEN NULL ELSE [Fecha Fin Liquidacion] END  AS DATE) AS [Fecha Fin Liquidacion],
		CASE WHEN [Codigo Proveedor]= 'nan' THEN NULL ELSE [Codigo Proveedor] END AS [Codigo Proveedor]
  INTO [dbo].[Prod_Secop2_ContratosElectronicos]
  FROM [dbo].[Test_Secop2_ContratosElectronicos]