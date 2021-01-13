
<div id="<?= $name; ?>"></div>

<?php
$this->registerJs(<<<JS
/**
 * 带checkbox的树形控件使用说明
 * @data 应该是一个js数组
 * @id: 将树渲染到页面的某个div上，此div的id
 * @checkId:需要默认勾选的数节点id；1.checkId="all"，表示勾选所有节点 2.checkId=[1,2]表示勾选id为1,2的节点
 * 节点的id号由url传入json串中的id决定
 */
function showCheckboxTree(data, id, checkId) {
    var that = $("#" + id);

    menuTree = that.bind("loaded.jstree", function (e, data) {
        that.jstree("open_all");
        that.find("li").each(function () {
            if (checkId == 'all') {
                that.jstree("check_node", $(this));
            }

            if (checkId instanceof Array) {
                for (var i = 0; i < checkId.length; i++) {
                    if ($(this).attr("id") == checkId[i]) {
                        that.jstree("check_node", $(this));
                    }
                }
            }
        });
    }).jstree({
        "core": {
            "data": data,
            "attr": {
                "class": "jstree-checked"
            }
        },
        "types": {
            "default": {
                "valid_children": ["default", "file"]
            },
            "file": {
                "icon": "glyphicon glyphicon-file",
                "valid_children": []
            }
        },
        "checkbox": {
            "keep_selected_style": false,
            "real_checkboxes": true
        },
        "plugins": [
            "contextmenu", "dnd", "search",
            "types", "checkbox"
        ],
        "contextmenu": {
            "items": {
                "create": null,
                "rename": null,
                "remove": null,
                "ccp": null
            }
        }
    });

    // 加载完毕关闭所有节点
    that.bind('ready.jstree', function (obj, e) {
        that.jstree('close_all');
    });
}

    var treeId = $name;
    var treeCheckIds = JSON.parse('$selectIds');
    var treeData = JSON.parse('$defaultData');
    
    showCheckboxTree(treeData, $(treeId).attr('id'), treeCheckIds);
JS
);
?>