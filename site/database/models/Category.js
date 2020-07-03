module.exports = (sequelize, DataTypes) =>{
    let alias = "Category";
    let cols = {
        id: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		name: {
			type: DataTypes.STRING(255),
			allowNull: false,
			field: 'name'
		}
    }
    let config = {
        tableName: 'category',
        timestamps: false
    }
    const Category = sequelize.define(alias,cols,config);
    Category.associate = function(models){
        Category.hasMany(models.Product,{
            as: 'products',
            foreignKey: 'idCategory'
        });
    }
    return Category;
}