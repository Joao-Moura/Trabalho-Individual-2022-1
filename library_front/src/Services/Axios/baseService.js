import axios from "axios";

export const BASE_API = axios.create({
    baseURL: "https://gces-joao-moura-2022-1.herokuapp.com"
});
