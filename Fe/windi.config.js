export default {
    theme: {
        textShadow: {
            'DEFAULT': '0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06)', // If a DEFAULT shadow is provided, it will be used for the non-suffixed shadow utility.
            '2xl': '0 25px 50px -12px rgba(0, 0, 0, 0.25)',
            '3xl': '0 35px 60px -15px rgba(0, 0, 0, 0.3)',
        },
        extend : {
            colors: {
                main: {
                    "500": "rgb(255, 115, 0)",
                },
                primary: {
                    "500": "rgb(8, 88, 169) ",
                }
            },
            screens: {
                tablet: '640px',
                laptop: '1024px',
                desktop: '1280px',
            },
        },

    },

    shortcuts: {
        'btn-main': 'p-8px h-full !bg-main-500 !text-light-50 hover:!bg-main-500 hover:!text-light-50 border-1 !border-main-500 hover:!border-main-500 rounded',
        'btn-primary': 'p-8px h-full !bg-light-50 !text-primary-500 hover:!bg-light-50 hover:!text-primary-500 border-1 hover:!border-primary-500 !border-primary-500 rounded'
    }
}
