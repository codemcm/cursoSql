--LISTA DE TICKETS DE UNA RIFA

SELECT T.ticket_id AS NUMEROTICKET, T.created_date AS FECHAREGISTRO, 
    R.description AS RIFA
    FROM ticket T 
    INNER JOIN raffle R 
    ON T.raffle_id=R.raffle_id;

