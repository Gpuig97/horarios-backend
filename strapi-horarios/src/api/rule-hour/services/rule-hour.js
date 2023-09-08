'use strict';

/**
 * rule-hour service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::rule-hour.rule-hour');
