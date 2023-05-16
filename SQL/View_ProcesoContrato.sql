/****** Object:  View [dbo].[View_ProcesoContrato]    Script Date: 5/15/2023 9:01:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

  create view [dbo].[View_ProcesoContrato]
  as
	  -- Procesos y Contratos que cruzan directamente por los proveedores seleccionados y ejecutantes
	  SELECT 
       pr.[Entidad] AS [Pro_Entidad]
      ,pr.[Nit Entidad]AS      [Pro_Nit Entidad]
      ,pr.[Departamento Entidad]AS      [Pro_Departamento Entidad]
      ,pr.[Ciudad Entidad]AS      [Pro_Ciudad Entidad]
      ,pr.[OrdenEntidad]AS      [Pro_OrdenEntidad]
      ,pr.[Entidad Centralizada]AS      [Pro_Entidad Centralizada]
      ,pr.[ID del Proceso]AS      [Pro_ID del Proceso]
      ,pr.[Referencia del Proceso]AS      [Pro_Referencia del Proceso]
      ,pr.[PCI]AS      [Pro_PCI]
      ,pr.[ID del Portafolio]AS      [Pro_ID del Portafolio]
      ,pr.[Nombre del Procedimiento]AS      [Pro_Nombre del Procedimiento]
      ,pr.[Fase]AS      [Pro_Fase]
      ,pr.[Fecha de Publicacion del Proceso]AS      [Pro_Fecha de Publicacion del Proceso]
      ,pr.[Fecha de Ultima Publicación]AS      [Pro_Fecha de Ultima Publicación]
      ,pr.[Fecha de Publicacion (Manifestacion de Interes)]AS      [Pro_Fecha de Publicacion (Manifestacion de Interes)]
      ,pr.[Fecha de Publicacion (Fase Borrador)]AS      [Pro_Fecha de Publicacion (Fase Borrador)]
      ,pr.[Fecha de Publicacion (Fase Seleccion)]AS      [Pro_Fecha de Publicacion (Fase Seleccion)]
      ,pr.[Precio Base]AS      [Pro_Precio Base]
      ,pr.[Modalidad de Contratacion]AS      [Pro_Modalidad de Contratacion]
      ,pr.[Justificación Modalidad de Contratación]AS      [Pro_Justificación Modalidad de Contratación]
      ,pr.[Duracion]AS      [Pro_Duracion]
      ,pr.[Unidad de Duracion]AS      [Pro_Unidad de Duracion]
      ,pr.[Fecha de Recepcion de Respuestas]AS      [Pro_Fecha de Recepcion de Respuestas]
      ,pr.[Fecha de Apertura de Respuesta]AS      [Pro_Fecha de Apertura de Respuesta]
      ,pr.[Fecha de Apertura Efectiva]AS      [Pro_Fecha de Apertura Efectiva]
      ,pr.[Ciudad de la Unidad de Contratación]AS      [Pro_Ciudad de la Unidad de Contratación]
      ,pr.[Nombre de la Unidad de Contratación]AS      [Pro_Nombre de la Unidad de Contratación]
      ,pr.[Proveedores Invitados]AS      [Pro_Proveedores Invitados]
      ,pr.[Proveedores con Invitacion Directa]AS      [Pro_Proveedores con Invitacion Directa]
      ,pr.[Visualizaciones del Procedimiento]AS      [Pro_Visualizaciones del Procedimiento]
      ,pr.[Proveedores que Manifestaron Interes]AS      [Pro_Proveedores que Manifestaron Interes]
      ,pr.[Respuestas al Procedimiento]AS      [Pro_Respuestas al Procedimiento]
      ,pr.[Respuestas Externas]AS      [Pro_Respuestas Externas]
      ,pr.[Conteo de Respuestas a Ofertas]AS      [Pro_Conteo de Respuestas a Ofertas]
      ,pr.[Proveedores Unicos con Respuestas]AS      [Pro_Proveedores Unicos con Respuestas]
      ,pr.[Numero de Lotes]AS      [Pro_Numero de Lotes]
      ,pr.[Estado del Procedimiento]AS      [Pro_Estado del Procedimiento]
      ,pr.[ID Estado del Procedimiento]AS      [Pro_ID Estado del Procedimiento]
      ,pr.[Adjudicado]AS      [Pro_Adjudicado]
      ,pr.[ID Adjudicacion]AS      [Pro_ID Adjudicacion]
      ,pr.[CodigoProveedor]AS      [Pro_CodigoProveedor]
      ,pr.[Departamento Proveedor]AS      [Pro_Departamento Proveedor]
      ,pr.[Ciudad Proveedor]AS      [Pro_Ciudad Proveedor]
      ,pr.[Fecha Adjudicacion]AS      [Pro_Fecha Adjudicacion]
      ,pr.[Valor Total Adjudicacion]AS      [Pro_Valor Total Adjudicacion]
      ,pr.[Nombre del Adjudicador]AS      [Pro_Nombre del Adjudicador]
      ,pr.[Nombre del Proveedor Adjudicado]AS      [Pro_Nombre del Proveedor Adjudicado]
      ,pr.[NIT del Proveedor Adjudicado]AS      [Pro_NIT del Proveedor Adjudicado]
      ,pr.[Codigo Principal de Categoria]AS      [Pro_Codigo Principal de Categoria]
      ,pr.[Estado de Apertura del Proceso]AS      [Pro_Estado de Apertura del Proceso]
      ,pr.[Tipo de Contrato]AS      [Pro_Tipo de Contrato]
      ,pr.[Subtipo de Contrato]AS      [Pro_Subtipo de Contrato]
      ,pr.[URLProceso]AS      [Pro_URLProceso]
      ,pr.[Codigo Entidad]AS      [Pro_Codigo Entidad]
      ,pr.[Estado Resumen]AS      [Pro_Estado Resumen]
      ,cr.[Orden]AS  [Con_Orden]
      ,cr.[Sector]AS      [Con_Sector]
      ,cr.[Rama]AS      [Con_Rama]
      ,cr.[ID Contrato]AS      [Con_ID Contrato]
      ,cr.[Referencia del Contrato]AS      [Con_Referencia del Contrato]
      ,cr.[Estado Contrato]AS  [Con_Estado Contrato]
      ,cr.[Tipo de Contrato]AS  [Con_Tipo de Contrato]
      ,cr.[Fecha de Firma]AS  [Con_Fecha de Firma]
      ,cr.[Fecha de Inicio del Contrato]AS      [Con_Fecha de Inicio del Contrato]
      ,cr.[Fecha de Fin del Contrato]AS      [Con_Fecha de Fin del Contrato]
      ,cr.[Fecha de Inicio de Ejecucion]AS      [Con_Fecha de Inicio de Ejecucion]
      ,cr.[Fecha de Fin de Ejecucion]AS      [Con_Fecha de Fin de Ejecucion]
      ,cr.[Valor del Contrato]AS  [Con_Valor del Contrato]
      ,cr.[Valor de pago adelantado]AS      [Con_Valor de pago adelantado]
      ,cr.[Valor Facturado]AS      [Con_Valor Facturado]
      ,cr.[Valor Pendiente de Pago]AS      [Con_Valor Pendiente de Pago]
      ,cr.[Valor Pagado]AS      [Con_Valor Pagado]
      ,cr.[Valor Amortizado]AS      [Con_Valor Amortizado]
      ,cr.[Valor Pendiente de Amortizacion]AS      [Con_Valor Pendiente de Amortizacion]
      ,cr.[Valor Pendiente de Ejecucion]AS      [Con_Valor Pendiente de Ejecucion]
	  ,cr.[Dias Adicionados]AS  [Con_Dias Adicionados]
      ,cr.[Fecha Inicio Liquidacion]AS  [Con_Fecha Inicio Liquidacion]
      ,cr.[Fecha Fin Liquidacion]AS      [Con_Fecha Fin Liquidacion]
	  , 'Cruce Directo ProcesoContrato' as [Cat_Extraccion]
	  FROM [dbo].[Prod_Secop2_Completo] pr
	  left join [dbo].[Prod_Secop2_ContratosElectronicos] cr 
		on pr.[ID del Portafolio] = cr.[Proceso de Compra]
		and pr.[CodigoProveedor] = cr.[Codigo Proveedor]
	  where  1 = 1

	  UNION

	    -- Contratos que no tienen proceso asociado dada la llave elegida (Proceso y Proveedor), deberían ser 20895 - 15772 = 5123 contratos

		-- Caso A: Contratos que no tienen Ningun proceso de compra =  22
	    SELECT cr.[Nombre Entidad] AS [Pro_Entidad]
      ,cr.[Nit Entidad]      [Pro_Nit Entidad]
      ,cr.Departamento AS      [Pro_Departamento Entidad]
      ,cr.Ciudad      [Pro_Ciudad Entidad]
      ,cr.Orden      [Pro_OrdenEntidad]
      ,cr.[Entidad Centralizada] AS      [Pro_Entidad Centralizada]
      ,'No Aplica' AS      [Pro_ID del Proceso]
      ,'No Aplica' AS      [Pro_Referencia del Proceso]
      ,'No Aplica'AS      [Pro_PCI]
      ,'No Aplica'AS      [Pro_ID del Portafolio]
      ,'No Aplica'AS      [Pro_Nombre del Procedimiento]
      ,'No Aplica'AS      [Pro_Fase]
      ,NULL AS      [Pro_Fecha de Publicacion del Proceso]
      ,NULL AS      [Pro_Fecha de Ultima Publicación]
      ,NULL AS      [Pro_Fecha de Publicacion (Manifestacion de Interes)]
      ,NULL AS      [Pro_Fecha de Publicacion (Fase Borrador)]
      ,NULL AS      [Pro_Fecha de Publicacion (Fase Seleccion)]
      ,NULL AS      [Pro_Precio Base]
      ,CR.[Modalidad de Contratacion] AS      [Pro_Modalidad de Contratacion]
      ,NULL AS      [Pro_Justificación Modalidad de Contratación]
      ,NULL AS      [Pro_Duracion]
      ,NULL AS      [Pro_Unidad de Duracion]
      ,NULL AS      [Pro_Fecha de Recepcion de Respuestas]
      ,NULL AS      [Pro_Fecha de Apertura de Respuesta]
      ,NULL AS      [Pro_Fecha de Apertura Efectiva]
      ,NULL AS      [Pro_Ciudad de la Unidad de Contratación]
      ,NULL AS      [Pro_Nombre de la Unidad de Contratación]
      ,NULL AS      [Pro_Proveedores Invitados]
      ,NULL AS      [Pro_Proveedores con Invitacion Directa]
      ,NULL AS      [Pro_Visualizaciones del Procedimiento]
      ,NULL AS      [Pro_Proveedores que Manifestaron Interes]
      ,NULL AS      [Pro_Respuestas al Procedimiento]
      ,NULL AS      [Pro_Respuestas Externas]
      ,NULL AS      [Pro_Conteo de Respuestas a Ofertas]
      ,NULL AS      [Pro_Proveedores Unicos con Respuestas]
      ,NULL AS      [Pro_Numero de Lotes]
      ,NULL AS      [Pro_Estado del Procedimiento]
      ,NULL AS      [Pro_ID Estado del Procedimiento]
      ,NULL AS      [Pro_Adjudicado]
      ,NULL AS      [Pro_ID Adjudicacion]
      ,CR.[Codigo Proveedor]  AS    [Pro_CodigoProveedor]
      ,NULL AS      [Pro_Departamento Proveedor]
      ,NULL AS      [Pro_Ciudad Proveedor]
      ,NULL AS      [Pro_Fecha Adjudicacion]
      ,NULL AS      [Pro_Valor Total Adjudicacion]
      ,NULL AS      [Pro_Nombre del Adjudicador]
      ,CR.[Proveedor Adjudicado] AS      [Pro_Nombre del Proveedor Adjudicado]
      ,CR.[Documento Proveedor] AS      [Pro_NIT del Proveedor Adjudicado]
      ,NULL AS      [Pro_Codigo Principal de Categoria]
      ,NULL AS      [Pro_Estado de Apertura del Proceso]
      ,CR.[Tipo de Contrato]      [Pro_Tipo de Contrato]
      ,NULL AS      [Pro_Subtipo de Contrato]
      ,CR.URLProceso AS      [Pro_URLProceso]
      ,CR.[Codigo Entidad] AS      [Pro_Codigo Entidad]
      ,NULL AS      [Pro_Estado Resumen]
      ,cr.[Orden]AS  [Con_Orden]
      ,cr.[Sector]AS      [Con_Sector]
      ,cr.[Rama]AS      [Con_Rama]
      ,cr.[ID Contrato]AS      [Con_ID Contrato]
      ,cr.[Referencia del Contrato]AS      [Con_Referencia del Contrato]
      ,cr.[Estado Contrato]AS  [Con_Estado Contrato]
      ,cr.[Tipo de Contrato]AS  [Con_Tipo de Contrato]
      ,cr.[Fecha de Firma]AS  [Con_Fecha de Firma]
      ,cr.[Fecha de Inicio del Contrato]AS      [Con_Fecha de Inicio del Contrato]
      ,cr.[Fecha de Fin del Contrato]AS      [Con_Fecha de Fin del Contrato]
      ,cr.[Fecha de Inicio de Ejecucion]AS      [Con_Fecha de Inicio de Ejecucion]
      ,cr.[Fecha de Fin de Ejecucion]AS      [Con_Fecha de Fin de Ejecucion]
      ,cr.[Valor del Contrato]AS  [Con_Valor del Contrato]
      ,cr.[Valor de pago adelantado]AS      [Con_Valor de pago adelantado]
      ,cr.[Valor Facturado]AS      [Con_Valor Facturado]
      ,cr.[Valor Pendiente de Pago]AS      [Con_Valor Pendiente de Pago]
      ,cr.[Valor Pagado]AS      [Con_Valor Pagado]
      ,cr.[Valor Amortizado]AS      [Con_Valor Amortizado]
      ,cr.[Valor Pendiente de Amortizacion]AS      [Con_Valor Pendiente de Amortizacion]
      ,cr.[Valor Pendiente de Ejecucion]AS      [Con_Valor Pendiente de Ejecucion]
	  ,cr.[Dias Adicionados]AS  [Con_Dias Adicionados]
      ,cr.[Fecha Inicio Liquidacion]AS  [Con_Fecha Inicio Liquidacion]
      ,cr.[Fecha Fin Liquidacion]AS      [Con_Fecha Fin Liquidacion]
	  , 'Contrato Sin Proceso' as [Cat_Extraccion]
		FROM [dbo].[Prod_Secop2_ContratosElectronicos] cr 
		where cr.[Proceso de Compra] not in (select distinct pr.[ID del Portafolio] from [dbo].[Prod_Secop2_Completo] pr )

		-- CASO B: Contratos que tienen proceso de compra pero aparecen asociados a proveedores distintos comparando el contrato vs el proceso = 5120 (40 min)
	 UNION

	  SELECT cr.[Nombre Entidad] AS [Pro_Entidad]
      ,cr.[Nit Entidad]      [Pro_Nit Entidad]
      ,cr.Departamento AS      [Pro_Departamento Entidad]
      ,cr.Ciudad      [Pro_Ciudad Entidad]
      ,cr.Orden      [Pro_OrdenEntidad]
      ,cr.[Entidad Centralizada] AS      [Pro_Entidad Centralizada]
      ,'No Aplica' AS      [Pro_ID del Proceso]
      ,'No Aplica' AS      [Pro_Referencia del Proceso]
      ,'No Aplica'AS      [Pro_PCI]
      ,'No Aplica'AS      [Pro_ID del Portafolio]
      ,'No Aplica'AS      [Pro_Nombre del Procedimiento]
      ,'No Aplica'AS      [Pro_Fase]
      ,NULL AS      [Pro_Fecha de Publicacion del Proceso]
      ,NULL AS      [Pro_Fecha de Ultima Publicación]
      ,NULL AS      [Pro_Fecha de Publicacion (Manifestacion de Interes)]
      ,NULL AS      [Pro_Fecha de Publicacion (Fase Borrador)]
      ,NULL AS      [Pro_Fecha de Publicacion (Fase Seleccion)]
      ,NULL AS      [Pro_Precio Base]
      ,CR.[Modalidad de Contratacion] AS      [Pro_Modalidad de Contratacion]
      ,NULL AS      [Pro_Justificación Modalidad de Contratación]
      ,NULL AS      [Pro_Duracion]
      ,NULL AS      [Pro_Unidad de Duracion]
      ,NULL AS      [Pro_Fecha de Recepcion de Respuestas]
      ,NULL AS      [Pro_Fecha de Apertura de Respuesta]
      ,NULL AS      [Pro_Fecha de Apertura Efectiva]
      ,NULL AS      [Pro_Ciudad de la Unidad de Contratación]
      ,NULL AS      [Pro_Nombre de la Unidad de Contratación]
      ,NULL AS      [Pro_Proveedores Invitados]
      ,NULL AS      [Pro_Proveedores con Invitacion Directa]
      ,NULL AS      [Pro_Visualizaciones del Procedimiento]
      ,NULL AS      [Pro_Proveedores que Manifestaron Interes]
      ,NULL AS      [Pro_Respuestas al Procedimiento]
      ,NULL AS      [Pro_Respuestas Externas]
      ,NULL AS      [Pro_Conteo de Respuestas a Ofertas]
      ,NULL AS      [Pro_Proveedores Unicos con Respuestas]
      ,NULL AS      [Pro_Numero de Lotes]
      ,NULL AS      [Pro_Estado del Procedimiento]
      ,NULL AS      [Pro_ID Estado del Procedimiento]
      ,NULL AS      [Pro_Adjudicado]
      ,NULL AS      [Pro_ID Adjudicacion]
      ,CR.[Codigo Proveedor]  AS    [Pro_CodigoProveedor]
      ,NULL AS      [Pro_Departamento Proveedor]
      ,NULL AS      [Pro_Ciudad Proveedor]
      ,NULL AS      [Pro_Fecha Adjudicacion]
      ,NULL AS      [Pro_Valor Total Adjudicacion]
      ,NULL AS      [Pro_Nombre del Adjudicador]
      ,CR.[Proveedor Adjudicado] AS      [Pro_Nombre del Proveedor Adjudicado]
      ,CR.[Documento Proveedor] AS      [Pro_NIT del Proveedor Adjudicado]
      ,NULL AS      [Pro_Codigo Principal de Categoria]
      ,NULL AS      [Pro_Estado de Apertura del Proceso]
      ,CR.[Tipo de Contrato]      [Pro_Tipo de Contrato]
      ,NULL AS      [Pro_Subtipo de Contrato]
      ,CR.URLProceso AS      [Pro_URLProceso]
      ,CR.[Codigo Entidad] AS      [Pro_Codigo Entidad]
      ,NULL AS      [Pro_Estado Resumen]
      ,cr.[Orden]AS  [Con_Orden]
      ,cr.[Sector]AS      [Con_Sector]
      ,cr.[Rama]AS      [Con_Rama]
      ,cr.[ID Contrato]AS      [Con_ID Contrato]
      ,cr.[Referencia del Contrato]AS      [Con_Referencia del Contrato]
      ,cr.[Estado Contrato]AS  [Con_Estado Contrato]
      ,cr.[Tipo de Contrato]AS  [Con_Tipo de Contrato]
      ,cr.[Fecha de Firma]AS  [Con_Fecha de Firma]
      ,cr.[Fecha de Inicio del Contrato]AS      [Con_Fecha de Inicio del Contrato]
      ,cr.[Fecha de Fin del Contrato]AS      [Con_Fecha de Fin del Contrato]
      ,cr.[Fecha de Inicio de Ejecucion]AS      [Con_Fecha de Inicio de Ejecucion]
      ,cr.[Fecha de Fin de Ejecucion]AS      [Con_Fecha de Fin de Ejecucion]
      ,cr.[Valor del Contrato]AS  [Con_Valor del Contrato]
      ,cr.[Valor de pago adelantado]AS      [Con_Valor de pago adelantado]
      ,cr.[Valor Facturado]AS      [Con_Valor Facturado]
      ,cr.[Valor Pendiente de Pago]AS      [Con_Valor Pendiente de Pago]
      ,cr.[Valor Pagado]AS      [Con_Valor Pagado]
      ,cr.[Valor Amortizado]AS      [Con_Valor Amortizado]
      ,cr.[Valor Pendiente de Amortizacion]AS      [Con_Valor Pendiente de Amortizacion]
      ,cr.[Valor Pendiente de Ejecucion]AS      [Con_Valor Pendiente de Ejecucion]
	  ,cr.[Dias Adicionados]AS  [Con_Dias Adicionados]
      ,cr.[Fecha Inicio Liquidacion]AS  [Con_Fecha Inicio Liquidacion]
      ,cr.[Fecha Fin Liquidacion]AS      [Con_Fecha Fin Liquidacion]
	  , 'Inconsistencias de Proveedores' as [Cat_Extraccion]
		FROM [dbo].[Prod_Secop2_ContratosElectronicos] cr 
	 where (cr.[Proceso de Compra]+'-'+cr.[Codigo Proveedor]) not in 
	    (select distinct (pr.[ID del Portafolio]+'-'+ pr.[CodigoProveedor]) from [dbo].[Prod_Secop2_Completo] pr )

GO


