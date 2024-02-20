/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  redirects: async () => [
    {
      source: "/logout",
      destination: "/auth/logout",
      permanent: true,
    },
  ],
};

module.exports = nextConfig;
