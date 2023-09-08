'use strict';

/**
 *  coordinator controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::coordinator.coordinator');
