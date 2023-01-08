// import models
const Product = require('./Product');
const Category = require('./Category');
const Tag = require('./Tag');
const ProductTag = require('./ProductTag');

// Products belongsTo Category
Product.belongsTo(Category, {
  foreign_key: 'categoryId'
})
// Categories have many Products
Category.hasMany(Product, {
  foreign_key: 'categoryId',
  onDelete: 'CASCADE',
})
// Products belongToMany Tags (through ProductTag)
Product.belongsToMany(Tag, {
  through: {
    model: ProductTag,
    unique: false,
    foreign_key: "product_id",
  },
})
// Tags belongToMany Products (through ProductTag)
Tag.belongsToMany(Product, {
  through: {
    model: ProductTag,
    unique: false,
    foreign_key: "tag_id",
  },
})


module.exports = {
  Product,
  Category,
  Tag,
  ProductTag,
};
