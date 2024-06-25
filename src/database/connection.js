import sql from 'mssql'

const dbSetting = {
    user: "sa",
    password: "123",
    server: "DESKTOP-LQG63AS\BRYANR",
    database: "onePiece",
}
export const getConnetion = async () => {
    try {
        const pool = await sqll.connect(dbSetting)

        pool.request().query("SELECT GETDATE")

        return pool;
    } catch (error) {
        console.error(error)
    }
}