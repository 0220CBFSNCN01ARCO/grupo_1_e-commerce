module.exports = (sequelize,DataTypes) => {
    let alias = "Users"
    let cols = {
        id: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			primaryKey: true,
			autoIncrement: true,
			field: 'id'
		},
		firstName: {
			type: DataTypes.STRING(45),
			allowNull: false,
			field: 'firstName'
		},
		lastName: {
			type: DataTypes.STRING(45),
			allowNull: false,
			field: 'lastName'
		},
		email: {
			type: DataTypes.STRING(200),
			allowNull: false,
			field: 'email'
		},
		password: {
			type: DataTypes.STRING(45),
			allowNull: false,
			field: 'password'
		},
		avatar: {
			type: DataTypes.STRING(450),
			allowNull: true,
			field: 'avatar'
		},
		iduserCategory: {
			type: DataTypes.INTEGER(11),
			allowNull: false,
			references: {
				model: 'usercategory',
				key: 'id'
			},
			field: 'iduserCategory'
		} 
    }
    let config = {
        tableName: 'users',
        timestamps: false
    }

	const User = sequelize.define(alias,cols,config);
	User.associate = function(models){
        User.belongsTo(models.UserCategory,{
            as: 'UserCategory',
            foreignKey: 'iduserCategory'
		});
	}
    return User;
}