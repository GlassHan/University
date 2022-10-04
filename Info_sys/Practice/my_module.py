def random_rsp():
    import random
    return random.choice(['가위','바위','보'])
rock='바위'
scissors='가위'
paper='보'
if __name__=='__main__': #해당 파일이 자체적으로 실행될 때만 아래부분 실행
    print('자체실행')