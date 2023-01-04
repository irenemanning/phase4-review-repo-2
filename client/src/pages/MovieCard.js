import { useEffect, useState } from "react";
import { useParams } from "react-router";
import styled from "styled-components";
import { Box, Button } from "../styles";
import NewReview from './NewReview.js'


function MovieCard( {user} ) {
    const { id } = useParams();    
    // const [userHasReview, setUserHasReview] = useState(false);
    const [{ data: movie, error, status }, setMovie] = useState({
        data: null,
        error: null,
        status: "pending",
      });

    useEffect(() => {
        fetch(`/movies/${id}`).then((r) => {
            if (r.ok) {
                r.json().then((movie) =>
                setMovie({ data: movie, error: null, status: "resolved"})
                );
            } else {
                r.json().then((err) =>
                setMovie({ data: null, error: err.error, status: "rejected" })
                );
            }
        });
    }, [id]);

    // After the review is added, refresh the page.
    function handleAddReview(newReview) {
        setMovie({
          error,
          status,
          data: {
            ...movie,
            reviews: [...movie.movies_with_reviews, newReview],
          },
        });
      }

      if (status === "pending") return <h2>Loading...</h2>;
      if (status === "rejected") return <h2>Error: {error}</h2>;
    

    return (
        <Wrapper>
            <Box>
                <img className="poster" alt={movie.title}src={movie.image_url}/>
                <h1>{movie.title}</h1>
                <h1>{movie.genre}</h1>
                <h1>{movie.year}</h1>
            </Box>

            <Box>
                <NewReview handleAddReview={handleAddReview} movieId={movie.id} userId={user.id}></NewReview>


                {/* if @current_user has not posted a review, 
                return Add A Review button
                else return null*/}
                
                {/* <button type="submit">{isLoading ? "Loading..." : "Login"}</button> */}
                {/* <Button>{userHasReview ? "Nice! You've reviewed this movie" : "Add a review"}</Button> */}
                {/* <Button>Add Review</Button> */}
                {/* <NewReview movieId={movie.id} userId={user.id}/> */}


                {movie.movies_with_reviews.map((review) => (
                    <Box key={review.id}>
                        {review.review_content}<br></br><br></br>
                        by: <em>{review.username}</em><br></br>
                    </Box>
                ))}
            
            </Box>
        </Wrapper>
    )
}

const Wrapper = styled.section`
  max-width: 800px;
  margin: 40px auto;
  text-align: center;
`;

export default MovieCard;