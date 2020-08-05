module.exports = (sequelize, DataTypes) =>{
    let alias = "UserCategory";
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
        tableName: 'usercategory',
        timestamps: false
    }
    const UserCategory = sequelize.define(alias,cols,config);
    UserCategory.associate = function(models){
        UserCategory.hasMany(models.Users,{
            as: 'Users',
            foreignKey: 'iduserCategory'
        });
    }
    return UserCategory;
}