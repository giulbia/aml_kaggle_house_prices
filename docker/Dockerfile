FROM nbeguier/mlbox

RUN pip install jupyter

EXPOSE 8888

CMD ["jupyter", "notebook", "--no-browser", "--allow-root", "--ip", "0.0.0.0"]
