app.factory('DB', function($http, $q) {

    const url = 'http://localhost//D:/Kertész Krisztián/Forras/Frontend/vizsga_jegyfoglalo_frontend_2023-main/API/database.php';

    return {

        selectAll: function(tablename) {
            var deferred = $q.defer();
            $http({
                method: 'GET',
                url: url + '?table=' + tablename
            }).then(function(res) {
                deferred.resolve(res.data);
            }, function(res) {
                deferred.reject(res.data);
            });
            return deferred.promise;
        },

        select: function(tablename, field, value) {
            var deferred = $q.defer();
            $http({
                method: 'GET',
                url: url + '?table=' + tablename + '&field=' + field + '&value=' + value
            }).then(function(res) {
                deferred.resolve(res);
            }, function(res) {
                deferred.reject(res);
            });
            return deferred.promise;
        },

        insert: function(tablename, values) {
            var deferred = $q.defer();
            $http({
                method: 'POST',
                url: url,
                data: { table: tablename, values: values }
            }).then(function(res) {
                deferred.resolve(res);
            }, function(res) {
                deferred.reject(res);
            });
            return deferred.promise;
        },

        update: function(tablename, field, value, values) {
            var deferred = $q.defer();
            $http({
                method: 'PATCH',
                url: url,
                data: { table: tablename, field: field, value: value, values: values }
            }).then(function(res) {
                deferred.resolve(res);
            }, function(res) {
                deferred.reject(res);
            });
            return deferred.promise;
        },

        delete: function(tablename, field, value) {
            if (value == null) {
                value = field;
                field = 'ID';
            }
            var deferred = $q.defer();
            $http({
                method: 'DELETE',
                url: url + '?table=' + tablename + '&field=' + field + '&value=' + value
            }).then(function(res) {
                deferred.resolve(res);
            }, function(res) {
                deferred.reject(res);
            });
            return deferred.promise;
        },

        deleteAll: function(tablename) {
            var deferred = $q.defer();
            $http({
                method: 'DELETE',
                url: url + '/?table=' + tablename
            }).then(function(res) {
                deferred.resolve(res);
            }, function(res) {
                deferred.reject(res);
            });
            return deferred.promise;
        }
    }

});