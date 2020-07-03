module.exports = (sequelize, DataTypes) =>{
    let alias = "ProductCart";
    let cols = {
		id: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			primaryKey: true,
			field: 'id'
		},
		idProducts: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			references: {
				model: 'Product',
				key: 'id'
			},
			field: 'idProducts'
		},
		idCarts: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			references: {
				model: 'Cart',
				key: 'id'
			},
			field: 'idCarts'
		}
    }
    let config = {
        tableName: 'productscarts',
        timestamps: false
    }
    const ProductsCart = sequelize.define(alias,cols,config);
    return ProductsCart;
}