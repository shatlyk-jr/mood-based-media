List<String> genres = [
  'Classical',
  'Blue',
  'Country',
  'Electronic',
  'Folk',
  'Dance',
  'Jazz',
  'Hip/Hop',
  'Latin',
  'Opera',
  'R&B Soul',
  'Pop',
  'Rock',
];

List<String> moods = [
  'sad',
  'happy',
  'in love',
  'depression',
  'calm',
  'energetic',
  'sleepy',
];

List<String> moodUrls = [
  'https://www.google.com/search?q=sad+songs&oq=sa&aqs=chrome.0.69i59l3j69i57j0i512l2j69i60l2.1273j0j9&sourceid=chrome&ie=UTF-8',
  'https://www.google.com/search?q=feel+happy+songs&ei=fqOxY6r_CYiDkdUP59eTgAI&ved=0ahUKEwiqts_n1Kb8AhWIQaQEHefrBCAQ4dUDCBA&uact=5&oq=feel+happy+songs&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIHCAAQsAMQQzIKCC4Q1AIQsAMQQ0oECEEYAEoECEYYAFAAWABgjwVoAXABeACAAQCIAQCSAQCYAQDIAQrAAQE&sclient=gws-wiz-serp',
  'https://www.google.com/search?q=fall+in+love+album+songs&ei=pqOxY5isEvuCkdUP5fGv-AE&ved=0ahUKEwiYl-H61Kb8AhV7QaQEHeX4Cx8Q4dUDCBA&uact=5&oq=fall+in+love+album+songs&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwA0oECEEYAEoECEYYAFDnCFjnCGCqCmgCcAF4AIABAIgBAJIBAJgBAKABAcgBCMABAQ&sclient=gws-wiz-serp',
  'https://www.google.com/search?q=depression+songs&ei=4qOxY_ilF4qZkdUPv6KigAI&ved=0ahUKEwj4nrSX1ab8AhWKTKQEHT-RCCAQ4dUDCBA&uact=5&oq=depression+songs&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIHCAAQsAMQQzIHCAAQsAMQQzIHCC4QsAMQQzIHCAAQsAMQQzIHCAAQsAMQQzINCAAQ5AIQ1gQQsAMYATINCAAQ5AIQ1gQQsAMYATINCAAQ5AIQ1gQQsAMYATIMCC4QyAMQsAMQQxgCMgwILhDIAxCwAxBDGAIyDAguEMgDELADEEMYAjISCC4QxwEQ0QMQyAMQsAMQQxgCSgQIQRgASgQIRhgBUIIGWO8TYOIWaAJwAXgAgAHoA4gBzx2SAQcyLTIuNC40mAEAoAEByAETwAEB2gEGCAEQARgJ2gEGCAIQARgI&sclient=gws-wiz-serp',
  'https://www.google.com/search?q=calm+songs&ei=zaOxY4_VG_-ZkdUP8_WBgAI&ved=0ahUKEwjP77aN1ab8AhX_TKQEHfN6ACAQ4dUDCBA&uact=5&oq=calm+songs&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIFCAAQgAQyBQgAEJECMgUIABCRAjIFCAAQkQIyBQgAEIAEMgUIABCABDIFCC4QgAQyBQgAEIAEMgUIABCABDIFCAAQgAQ6CggAEEcQ1gQQsAM6BAgAEEM6CwguEIAEEMcBENEDOggILhCABBDUAjoECC4QQzoKCC4QxwEQ0QMQQ0oECEEYAEoECEYYAFCPD1ijGmC-G2gDcAF4AIAB6AOIAckXkgEFMy01LjOYAQCgAQHIAQjAAQE&sclient=gws-wiz-serp',
  'https://www.google.com/search?q=energetic+songs+songs&biw=1366&bih=635&ei=LaSxY_mrL7ytkdUPmae8gAI&ved=0ahUKEwi59q271ab8AhW8VqQEHZkTDyAQ4dUDCBA&uact=5&oq=energetic+songs+songs&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIGCAAQFhAeMgUIABCGAzIFCAAQhgMyBQgAEIYDMgUIABCGAzoFCC4QgAQ6BQgAEIAEOggILhCABBDUAjoLCC4QgAQQxwEQ0QM6CwguEIAEEMcBEK8BOgQIABBDOgUIABCRAjoICC4Q1AIQkQI6BwgAEIAEEAo6CQgAEIAEEA0QCjoHCAAQgAQQDToICAAQFhAeEA86BQghEKABSgQIQRgASgQIRhgAUJ4UWMw-YKpBaANwAXgAgAGkBogB4D-SAQ0yLTEyLjEwLjAuMS4xmAEAoAEBwAEB&sclient=gws-wiz-serp',
  'https://www.google.com/search?q=sleepy+songs+songs&ei=XaSxY_DHE6iCkdUP0Pq3gAI&ved=0ahUKEwiw6oPS1ab8AhUoQaQEHVD9DSAQ4dUDCBA&uact=5&oq=sleepy+songs+songs&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIFCCEQoAEyBQghEKABOgoIABBHENYEELADOgcIABCwAxBDOg0IABDkAhDWBBCwAxgBOgwILhDIAxCwAxBDGAI6DwguENQCEMgDELADEEMYAjoECAAQQzoFCAAQgAQ6BwgAEIAEEAo6BggAEBYQHjoICAAQFhAeEAo6DQgAEBYQHhAPEPEEEAo6BQgAEIYDSgQIQRgASgQIRhgBULQIWIkRYM4SaAFwAXgAgAHXAogBgwqSAQUyLTEuM5gBAKABAcgBE8ABAdoBBggBEAEYCdoBBggCEAEYCA&sclient=gws-wiz-serp',
];

List<String> genreUrls = [
  'https://www.google.com/search?q=list+of+classical+music&ei=G3axY9rML-eykdUPzrGLWA&ved=0ahUKEwiaxsXDqab8AhVnWaQEHc7YAgsQ4dUDCBA&uact=5&oq=list+of+classical+music&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIFCC4QgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQ6CwguEIAEEMcBENEDOggILhCABBDUAjoECAAQQzoKCC4QxwEQ0QMQQzoICC4Q1AIQgAQ6BQgAEJECOgUILhCRAkoECEEYAEoECEYYAFAAWNocYM0oaABwAXgAgAGnA4gB7zeSAQkyLTEwLjEyLjGYAQCgAQHAAQE&sclient=gws-wiz-serp',
  'https://digitaldreamdoor.com/pages/best_bluesong.html',
  'https://www.google.com/search?q=country+genre+songs&ei=5XaxY6iXGpOmkdUPpOCs-AE&ved=0ahUKEwjondmjqqb8AhUTU6QEHSQwCx8Q4dUDCBA&uact=5&oq=country+genre+songs&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIFCAAQgAQyBQgAEIAEMgYIABAWEB4yBggAEBYQHjIGCAAQFhAeMgYIABAWEB4yCAgAEBYQHhAPMgUIABCGAzoECAAQQzoECC4QQzoFCC4QgAQ6CwguEIAEEMcBENEDOgUIABCRAjoICC4QgAQQ1AI6CAguENQCEIAEOgcIABCABBAKOggIABAWEB4QCkoECEEYAEoECEYYAFAAWKItYMIuaAJwAHgAgAHaAogB_S2SAQYyLTEzLjeYAQCgAQHAAQE&sclient=gws-wiz-serp',
  'https://www.google.com/search?q=electronic+music+list&ei=PnixY6SEJJ6YkdUP6dCjQA&ved=0ahUKEwikm6TIq6b8AhUeTKQEHWnoCAgQ4dUDCBA&uact=5&oq=electronic+music+list&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIGCAAQBxAeMgYIABAHEB4yCAgAEAgQBxAeMggIABAIEAcQHjIICAAQCBAHEB4yCAgAEAgQBxAeMggIABAIEAcQHjIICAAQCBAHEB4yCAgAEAgQBxAeMggIABAIEAcQHjoKCAAQRxDWBBCwAzoHCAAQsAMQQzoNCAAQ5AIQ1gQQsAMYAToMCC4QyAMQsAMQQxgCOggIABAHEB4QD0oECEEYAEoECEYYAVD3BVjsFmDLGGgCcAF4AIABxAKIAZIXkgEFMi01LjWYAQCgAQHIAQ7AAQHaAQYIARABGAnaAQYIAhABGAg&sclient=gws-wiz-serp',
  'https://www.google.com/search?q=folk+music+list&ei=VnixY5-pCO27kdUPtK-n-AE&ved=0ahUKEwifrMHTq6b8AhXtXaQEHbTXCR8Q4dUDCBA&uact=5&oq=folk+music+list&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwA0oECEEYAEoECEYYAFCuxxpYp8waYPfNGmgDcAF4AIABwgKIAaYJkgEFMi0yLjKYAQCgAQHIAQjAAQE&sclient=gws-wiz-serp',
  'https://www.google.com/search?q=list+of+dance+music&oq=list+of+dance+music&aqs=chrome..69i57.4593j0j7&sourceid=chrome&ie=UTF-8',
  'https://www.google.com/search?q=list+of+jazzmusic&ei=pImxY5ebHpuKkdUPt7mOsAQ&ved=0ahUKEwiX_YiUvKb8AhUbRaQEHbecA0YQ4dUDCBA&uact=5&oq=list+of+jazzmusic&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwA0oECEEYAEoECEYYAFDEBVjZCGCJCmgCcAF4AIABtAOIAfwIkgEFMy0yLjGYAQCgAQHIAQjAAQE&sclient=gws-wiz-serp',
  'https://www.google.com/search?q=list+of+hiphop+music&ei=zomxY-_1Ko2fkdUPkL2IgAI&ved=0ahUKEwjvlJmovKb8AhWNT6QEHZAeAiAQ4dUDCBA&uact=5&oq=list+of+hiphop+music&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIICAAQBxAeEAoyBwgAEIAEEA0yCAgAEAgQBxAeMg8IABAIEAcQHhAPEPEEEAoyBggAEB4QDTIGCAAQHhANMggIABAIEB4QDTIICAAQCBAeEA0yCAgAEAgQHhANMggIABAIEB4QDToECAAQRzoGCAAQBxAeOgsIABAIEAcQHhDxBEoECEEYAEoECEYYAFC3BliDF2DyGGgAcAN4AIABlwOIAfMQkgEFMy01LjGYAQCgAQHIAQjAAQE&sclient=gws-wiz-serp',
  'https://www.google.com/search?q=list+of+latin+music&ei=9ImxY9WWOdWjkdUPrpqPgAI&ved=0ahUKEwjV4La6vKb8AhXVUaQEHS7NAyAQ4dUDCBA&uact=5&oq=list+of+latin+music&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIGCAAQBxAeMgYIABAHEB4yBggAEAcQHjIGCAAQBxAeMgYIABAHEB4yBggAEAcQHjIGCAAQBxAeMgYIABAHEB4yBwgAEIAEEA0yBwgAEIAEEA06CggAEEcQ1gQQsANKBAhBGABKBAhGGABQvgxYghlg5RloAnABeACAAe8CiAGREJIBAzMtNpgBAKABAcgBCMABAQ&sclient=gws-wiz-serp',
  'https://www.google.com/search?q=list+of+opera+music&ei=DIqxY6myC9i6kdUPloKngAI&ved=0ahUKEwip6MHFvKb8AhVYXaQEHRbBCSAQ4dUDCBA&uact=5&oq=list+of+opera+music&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIGCAAQBxAeMgYIABAHEB4yBggAEAcQHjIGCAAQBxAeMgYIABAHEB4yBggAEAcQHjIGCAAQBxAeMgYIABAHEB4yBQgAEJECMgcIABCABBANOgoIABBHENYEELADOgYIABAeEA06CAgAEB4QDxANOggIABAIEB4QDToICAAQCBAHEB5KBAhBGABKBAhGGABQnw9YpChgsypoAnABeACAAf4CiAGoHZIBBDMtMTGYAQCgAQHIAQjAAQE&sclient=gws-wiz-serp',
  'https://www.google.com/search?q=list+of+rnb+music&ei=J4qxY9WqMKKskdUP3aG4gAI&ved=0ahUKEwiV2tbSvKb8AhUiVqQEHd0QDiAQ4dUDCBA&uact=5&oq=list+of+rnb+music&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIHCAAQgAQQDTIHCAAQgAQQDTIICAAQCBAeEA0yBQgAEIYDMgUIABCGAzIFCAAQhgM6BAgAEEc6CggAEEcQ1gQQsAM6BggAEAcQHkoECEEYAEoECEYYAFDb_QFYnocCYLyNAmgCcAJ4AIABvgSIAdYMkgEHMy0zLjAuMZgBAKABAcgBCMABAQ&sclient=gws-wiz-serp',
  'https://www.google.com/search?q=list+of+pop+music&ei=TIqxY-TbE7SDkdUP5qGR-AE&ved=2ahUKEwiCw4PuvKb8AhWXUqQEHeubACAQ9YYDKAR6BAgVEAk&uact=5&oq=list+of+pop+music&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwAzIKCAAQRxDWBBCwA0oECEEYAEoECEYYAFDWCljUDmCCEWgDcAF4AIABhAOIAckIkgEDMy0zmAEAoAEByAEIwAEB&sclient=gws-wiz-serp&si=AC1wQDCwOgJVVDAvlwiMmwm4GBiuBDNbRJcKh_cFyDjPQV4KR5G4CuNfcDCVIgbqnbYDjojg7HUeCS04VmI2CGJqMtDm3O-3onioliPZVUH0KkTNvXmP9DxoJ4I39u4QybVm1MddiW42vlCMDH3G0UxZEVo-etYi4U2H7V3te1H1FT4PPcQTrwyXr401NsWsS12utTLLN-j0A2X4WBVVRRwMRDy_UmTe7T82yRUuWU7nqkHiJL6TXhJj0q5QSItzqb8UVLAGO7IVvG9OOjd1sxjScSNn6BAqhBySXcrw7R8Q9LM5pviA1o-lJXCgj-caCGV3eZdxx9VkkZqxonRzzuJULHpkSIwV3gNteo6FszED9-og7meAiuPCsp3aT0VruU5gKXdVohrw9SbywFMnupFZKdFhLL_GxMMGuEANxKQwJY6ho58m72dcgcv0mnBSnoPnARwb4nmTwn4Z2UWKaZvAGSRl7vgDs876JoQG4tXBiSpL2j4rH30TZLurC-qy66990pEiq-DdhVSmeGNInRbVWzEtWgK0VQ6yyKstEdvuX7Nn_0kgBmCMDP_In8v7LxJluyZw0ZTowqgf6ATTb0eSRvoH54eaQfBdCq_J4YVfrZJaHJXbrj_kPsLvllXwgMSzfz_1zarmepDwHuodcVcsluzeki64DA%3D%3D&ictx=1',
  'https://www.google.com/search?q=a+list+rock+songs&ei=aoqxY4O1O_ahkdUPivu2YA&ved=0ahUKEwiDktvyvKb8AhX2UKQEHYq9DQwQ4dUDCBA&uact=5&oq=a+list+rock+songs&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIGCAAQCBAeMgYIABAIEB4yBggAEAgQHjIGCAAQCBAeMgYIABAIEB4yBggAEAgQHjIGCAAQCBAeMgYIABAIEB4yBQgAEIYDMgUIABCGAzoKCAAQRxDWBBCwAzoFCAAQogQ6BwgAEB4QogQ6CgghEMMEEAoQoAE6CAgAEAgQHhANOggIIRDDBBCgAUoECEEYAEoECEYYAFDKEViDMGDrOGgFcAF4AIAB8AKIAdUYkgEDMy05mAEAoAEByAEIwAEB&sclient=gws-wiz-serp',
];