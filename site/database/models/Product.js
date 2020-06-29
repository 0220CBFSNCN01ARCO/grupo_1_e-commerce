module.exports = (sequelize, DataTypes) =>{
    let alias = "Product";
    let cols = {
        id: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		name: {
			type: DataTypes.STRING(90),
			allowNull: false,
			field: 'name'
		},
		description: {
			type: DataTypes.TEXT,
			allowNull: false,
			field: 'description'
		},
		price: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			field: 'price'
		},
		stock: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			field: 'stock'
		},
		img: {
			type: DataTypes.STRING(450),
			allowNull: false,
			field: 'img'
		},
		idCategory: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			references: {
				model: 'Category',
				key: 'id'
			},
			field: 'idCategory'
		}
    }
    let config = {
        tableName: 'products',
        timestamps: false
    }
    const Product = sequelize.define(alias,cols,config);
    Product.associate = function(models){
        Product.belongsTo(models.Category,{
            as: 'categorys',
            foreignKey: 'idCategory'
        });
        Product.belongsToMany(models.Cart,{
			as: 'carts',
			through: models.ProductCart,
			foreignKey: 'idProducts',
			otherKey:'idCarts'
		});
    }
    return Product;
}