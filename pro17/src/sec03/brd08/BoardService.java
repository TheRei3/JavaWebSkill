package sec03.brd08;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	public Map listArticles(Map pagingMap) {
		Map articleMap = new HashMap();
		List<ArticleVO> articlesList = boardDao.selectAllArticles(pagingMap);
		int totArticles = boardDao.selectTotArticles();
		articleMap.put("articlesList", articlesList);
		articleMap.put("totArticles", totArticles);
		
		return articleMap;
	}


}
