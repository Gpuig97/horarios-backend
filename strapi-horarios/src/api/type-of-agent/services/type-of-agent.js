'use strict';

/**
 * type-of-agent service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::type-of-agent.type-of-agent');
