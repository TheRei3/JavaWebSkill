package sec03.brd07;

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

	public void modArticle(ArticleVO article) {
		boardDao.updateArticle(article);	
	}

	public List<Integer> removeArticle(int articleNO) {
		List<Integer> articleNOList = boardDao.selectRemoveArticles(articleNO);
		boardDao.deleteArticle(articleNO);
		return articleNOList;
	}

	public int addReply(ArticleVO article) {
		return boardDao.insertNewArticle(article);
	}


}
