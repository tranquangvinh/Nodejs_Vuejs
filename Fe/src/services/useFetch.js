import { useFetch } from '@vueuse/core'
import authHeader from './auth-header';

export const useFetchNotLogin = (url) => {
    const { data } = useFetch(url, {
        async beforeFetch({ url, options, cancel }) {
            options.headers = {
                ...options.headers,
                ...authHeader(),
            }
            return {
                options,
            }
        },
    }).post()

    return {data, }
}