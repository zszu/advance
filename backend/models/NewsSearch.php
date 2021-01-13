<?php
namespace backend\models;
use common\models\News;
use yii\data\ActiveDataProvider;

class NewsSearch extends News {
    public function rules()
    {
        return [
            [['id', 'status', 'created_at', 'updated_at'], 'integer'],
            [['title', 'content', 'tags'], 'safe'],
        ];
    }
    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = News::find()->orderBy('order_by desc');

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pageSize'=>10,
                // 去除 per-page参数
                'pageSizeParam' => false
            ],
            'sort'=>false
        ]);


        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            //'id' => $this->id,
            'post.id' => $this->id,
            'status' => $this->status,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'title', trim($this->title)])
            ->andFilterWhere(['like', 'content', trim($this->content)])
            ->andFilterWhere(['like', 'tags', trim($this->tags)]);


        // $dataProvider->sort->attributes['authorName'] =
        // [
        // 	'asc'=>['Adminuser.nickname'=>SORT_ASC],
        // 	'desc'=>['Adminuser.nickname'=>SORT_DESC],
        // ];




        return $dataProvider;
    }
}