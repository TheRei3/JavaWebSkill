package sec03.brd03;

import java.util.List;

public class BoardService {
	BoardDAO boardDao;
	
	public BoardService() {
		boardDao = new BoardDAO();
	}
	
	public List<ArticleVO> listArticles() {
		List<ArticleVO> articlesList = boardDao.selectAllArticles(); 
		return articlesList;
	}

	public int addArticle(ArticleVO article) {
		return boardDao.insertNewArticle(article);
	}

	public ArticleVO viewArticle(int articleNO) {
		ArticleVO article = null;
		article = boardDao.selectArticle(articleNO);
		return article;
	}


}
