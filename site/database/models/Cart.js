module.exports = (sequelize, DataTypes) => {
    let alias = "Cart";
    let cols = {
		id: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		idUsers: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			references: {
				model: 'User',
				key: 'id'
			},
			field: 'idUsers'
		},
		totalPrice: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			field: 'totalPrice'
		},
		cantItems: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			field: 'cantItems'
		}
    }
    let config = {
        tableName: 'carts',
        timestamps: false
    }
	const Cart = sequelize.define(alias,cols,config);
	Cart.associate = function(models){
		Cart.belongsToMany(models.Product,{
			as: 'productos',
			through: models.ProductCart,
			foreignKey: 'idCarts',
			otherKey:'idProducts'
		});
    }
    return Cart;
}