import { makeStyles } from "@material-ui/core/styles";

export default makeStyles((theme) => ({
  toolbar: theme.mixins.toolbar,
  content: {
    backgroundColor: theme.palette.background.default,

    padding: theme.spacing(5),
  },
  content1: {
    paddingLeft: "17%",
    display: "flex",
    backgroundColor: theme.palette.background.default,
    padding: theme.spacing(5),
    flexWrap: "wrap",
    "& > *": {
      flexBasis: "24%",
      maxWidth: "25%",
      marginBottom: "20px",
    },
  },
  root: {
    flexGrow: 1,
  },
  searchs: {
    justifyContent: "center",
    display: "flex",
    marginTop: "40px",
  },
  searchb: {
    marginBottom: "10px",
    height: "50%",
    width: "50%",
    paddingLeft: "10px",
  },
}));
