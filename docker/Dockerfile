FROM nbeguier/mlbox

RUN pip install jupyter tpot

EXPOSE 8888

CMD ["jupyter", "notebook", "--no-browser", "--allow-root", "--ip", "0.0.0.0"]
