import { DBConnection } from "../connection";
type Options = {
    db?: DBConnection
}

export class User {
    constructor(public id:string,public uuid: string, options?:Options ){}

}