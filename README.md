# Furata Pendulum
California State University, Chico, Fall 2021 <br/>
<br/>
Members: <br/>
Riczi Cano, Greta Fischer, Flor Contreras, Timonthy Grice, and Marcus Parsons <br/>
# Table of Contents <br/>
1. Introduction
2. Modeling
3. Sensor Calibration
4. Controller Design and Simulations
5. Simulation Code
6. Reference
# 1. Introduction:
![alt text](https://viewer.diagrams.net/?tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&page-id=7uqylNF0esgqoHjO1SLy&title=Functional%20Viewpoint%20#R%3Cmxfile%3E%3Cdiagram%20id%3D%22KD5jMLtUj7xpMkqUFyOv%22%20name%3D%22Page-1%22%3E7VnLctowFP0alsn4gQUsE5K0izLNhE7TdKfYF6xGthhZBOjXV8aSX3JqQihuSTdgHVkSOudIurr03HG0%2FsDxIpywAGjPsYJ1z73qOQ5CtvxMgU0GDGwFzDkJMsgqgCn5CRloa3RJAkgUlkGCMSrIogr6LI7BFxUMc85W1ddmjAYVYIHnYABTH1MTvSeBCDN06FkF%2FhHIPNQj25aqibB%2BWQFJiAO2KkHudc8dc8ZE9hStx0BT7qq83LxQm%2F8wDrHYpcHg8%2FPS%2FT75gpLpZfB1%2BOP25unTmZP18ozpUk14QnzOzsYsFpxRCrznIBwteu5l%2FJikX2oyYqMZ4mwZB5AOYsvqVUgETBfYT2tX0hISC0VEVfWMUDpmlPFtW3c2mzm%2BL%2FFEjvYEpZoAPSIP5eM9AxewfnHmds6n9CGwCATfyFd0g4GSQHnQRaq8KhS1tUxhSU39HlYmmuddFzzLB0X1K2h3DdpvWUIEYbFEpxAn7BR4d5FX5d3qmve%2BaXcmToJrb2T9ZVx7Btd3gH3l8fsQ0nPi5GjvO13Tjt7l1tI970ODd4NWiIOLNCSRpZjFUKWx4NzKKYLACE5aCSoR4DXMX2McKBbkudp9EylqhFtG5MA5%2F3J%2FaT5SdRcJW3IfVKtyVNLWkVvrSGA%2BB2F0tNUon%2Fb%2Bso3et2zOaD%2FZjKPdGZ27w6Mqpy8SB5IO1kR8UzXp80OKn3uqdLUuvXa10QUZJG%2B%2BlQulVmmxaLYtbV5pEzmXrR7tkWTGdVvk05Xt%2BvXgZN%2FdwuvXOrKPu1vY5n3pTZ7L%2FVNY5kF78Df%2B0V4t%2FPlQtmejVw%2FoOe9f8ByqbXX9ulV29Rwatpj3T3vOvCwexnOv27P22R8P6Dm0o%2Be8Lj3nWTXPDffd57xaR0eOimzzotyF53b3T6svUJe%2BqIddfW9PX7j1jo7tC%2FNS38X5d0BfOCfhi%2FxaW78OH8sXZtbhmoIvOPFx2ni85Ftp2hIPAtaiaphqFkEZqpxyUBCmZB7Loi%2BHAYlfpumFdPQLVRGRIEiHaUxnNN3i3pSfMC5aTek4u8FZ9QV9sPyEPTAkmgBOlhyirTLWVPKE23NyJyORcSlpkGh0VIXMFNIdEzhL3Z2qCqgW6bgDz1ABHVMFx0wrVNdJkU49VU3qKyM%2FlrpaGTrK%2BL936ePFblfIPtCykcXiT%2BosYCj%2B6XevfwE%3D%3C%2Fdiagram%3E%3Cdiagram%20id%3D%227uqylNF0esgqoHjO1SLy%22%20name%3D%22Page-2%22%3E7VnLcpswFP0aT1fuIMDYWdqOnSz6yNTTJlllFBCPViAihA39%2BgokDBhqHDskaZqNBx30vOcc6coMtLmfXFAYup%2BJhfBAVaxkoJ0PVNUwAP%2FNgFQAYyABh3qWgJQSWHm%2FkQBBgcaehSKJCYgRgpkX1kGTBAEyWQ2DlJJNvZpNsFUDQuigBrAyIW6i157FXIFORkqJXyLPcYuRgSLf%2BLCoLIHIhRbZVCBtMdDmlBAmnvxkjnAWuyIus7XCFnF8d51uxgvfdL7cacuh6Gz5mCbbJVAUsKO7Rhc%2FyPz2%2B8PV0lAmvpXSH6t0qMulsbSIF7J4%2BGSRUOYShwQQL0p0RkkcWCjrVeGlss4nQkIOAg7%2BRIylUgswZoRDLvOxfIsSj91Unm%2Bzrj6OZOk8kT3nhbQoBIymN9VCpVVWLJvlpaKdWF%2B2qB05dMRS1otITE20J4BSGwxSB7E99cBWMNxoiPiIT5K3owhD5q3rk4NS8s623rbpFfH4tFVFuhOM5fjSnKqu1rsQ85KtSnHwh8o0SiiXzCPkI0dfQxzLJTT1hDG3eqabjesxtAphHs8N32zqqoBRKPxve0mmrpntYTwnmNC8I822bdU0OR4xSn6hyhvLuDdGxpbsNaIMJUfQ3aRH9nJm1KNcLHNTbii6DIVb2UsKrI3PGhOPDbvx7trTXFscRF2uVU907Uksg4a55oRHiWQNp2FICTTdgWpAPzNScB%2BF28BVhFHSDrot%2BHocB8Z63XKgaTmgtnjO6Mtz43%2FFc31751RPtJ9kI%2FW4k2xKKUwr1cKsQrRnHKV9nOVx9fmDmMGTHqtqw%2FmrNGLI%2F8AXpsgM%2FW36XhvthPvFfT85IMUJrGl2U%2BGlgASoHtv6HlAeiOUZeFsYvL8DsfOgU9pZqUR91BL0Ajs1iwX1%2FEpTd8gUe1LD%2B42ONG1HPZOdjnpOh8%2BeVCsncf5yXCpPw6V%2B1tFRz1yCQ%2B42b5zMTg6OJbNxNeqbzGYuvY9ME8Mo8szDNvJnvdm87o1c78jhDpXLrlrAM6ulmX99QzbiDPH8SVVWnsNz%2BM4MjGdGrK6gejold4xq7iUhiPkImQy5JBDHZ1me5ZkQT%2BUL37Ms%2FLe%2FVNr2nR4uaN152qRFaFpfaRrQGpx9jVkYs3fCpDcnr40xvWVPNnBGwT1%2FcFgeDAHYJN8eSrKMh5gUL4ZRfn2e8gpAD5PyZdHLJV%2FNEKN1%2FmFjSs2MA5PFFDUlIYbj6xEj1mfB4crM%2Fiv1bO9XUj2gODGq97K2%2F0CPkA8vlh9VxJ5efpnSFn8A%3C%2Fdiagram%3E%3C%2Fmxfile%3E)
Here is the link to this project's presentation: <br/>
The Furata Pendulum was studied, modeled and simulated. The Furata Pendulum is a driven arm that rotates on the horizontal plane, which is connected to another arm which rotates on the vertical plane. This project's objective have the arm in the horizontal plane balance vertically by controlling motors and the required force to do so. This project will be done virtually, utilizing MATLAB and SIMULNK and CoppeliaSim.
! [alt text] (https://viewer.diagrams.net/?tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&title=Functional%20Viewpoint%20#R%3Cmxfile%20pages%3D%222%22%3E%3Cdiagram%20id%3D%22KD5jMLtUj7xpMkqUFyOv%22%20name%3D%22Page-1%22%3E7VnJdtowFP0alsnxgAUsEzJ0UU5zQk8z7BT7gdXIFkcWU7%2B%2BMpZHOTFxKVDSDVhXloTuvZKeHh17GKxuOZ75I%2BYB7ViGt%2BrYVx3L6iNLfsbAOgF6fZQAU068BDJyYEx%2BQQKaKTonHkQKSyDBGBVkVgZdFobgihKGOWfL8msTRr0SMMNT0ICxi6mOPhBP%2BGpajpHjX4BM%2FXRk01A1AU5fVkDkY48tC5B93bGHnDGRPAWrIdCYuzIvN2%2FUZj%2BMQyi2adD7tpjbz6PvKBpfej%2F6P%2B9uXr%2BeKXUWmM7VhEfE5exsyELBGaXAOxbCwaxjX4YvUfylJiPWKUOczUMP4kFMWb30iYDxDLtx7VJaQmK%2BCKiqnhBKh4wyvmlrTyYTy3UlHsnRXqFQ46EX5KBsvOI01cwXwAWsCpCa9i2wAARfy1fS2p6SQHnQRqq8zBU1U5n8gprpe1iZaJp1nfMsHxTVH6Dd1mi%2FYxERhIUSHUMYsVPg3UZOmXfj0Lx3dbszcRJcOwPjyLh2NK7vAbvK4w8%2BxOfEydHetQ5NO%2FqUW8vhee9rvGu0QuhdxCGJLIUshDKNOefGexSBV4pXdIIKBDg1808xDhQLsihHOXWkqBHuGJG%2FJONf7i%2F1R2raRcTm3AXVqhiVNHVkVzoSmE9BaB1tNMqm3V62weeWzRq0k0072q3Bud3fq3KmuVPpYEXEo6qJn59i%2FNxRpatV4bWrdVqQQfL6sVgotIqLebNNad1kk4T%2B5sAxobY50DkS23WrwUnb3cLpVjoy97tbmPp96Y88l%2Fknt8xT6sF3%2FJN6NffnU9GetV5t7znnn%2FQcqmx13apVtvUc6jeY9297Tr8s7sZzH9uz2uyP7T2HtvScc1Sec4yK5%2Fpt9zmn0tGeoyJTvygfwnNv%2BqfRF%2BiofFENu7pOS1%2FY1Y727Qv9Un%2BI86%2B9L6zT9EV2ra1eh%2FflCz3rcE3BFZy4OG48nPONVk2JB3n7F2XDlLMIylDFlIOCMCXTUBZdOQxI%2FDLOJcSjX6iKgHhePExtOmPLW9z2%2BQntolWXjjNrnFVd0DvLT5g9TaIR4GjOIdgoY4wlT7g5J3cyEmmXkhqJBntVSE8h3TOBk9TdqaqAKpGO3XM0FdA%2BVbD0tEJ5neTp1FPVpLoysmPpUCsjjTL%2B713p8WI2K2TuaNnIYv4ndRIw5P%2F029e%2FAQ%3D%3D%3C%2Fdiagram%3E%3Cdiagram%20id%3D%227uqylNF0esgqoHjO1SLy%22%20name%3D%22Page-2%22%3E7VnLcpswFP0aT1fp8DK2l7ZjJ4s%2BMvW0SVYZBcSjFYgIYUO%2FvhISBgw1jh2SNM3Ggw563nOOdGUG%2BjxILwiIvM%2FYhmigKXY60M8HmjY0DfbLgUwCk4kAXOLbAlJKYOX%2FhgJUCzTxbRhLTEAUY0T9qA5aOAyhRWsYIARv6tUcjOwaEAEXNoCVBVATvfZt6gl0PFRK%2FBL6rleMrCryTQCKyhKIPWDjTQXSFwN9TjCm4ilI5xDx2BVxma0VukiSu%2BtsM1oElvvlTl%2Beic6Wj2myXQKBIT26a3jxA89vvz9cLU1lHNgZ%2BbHKziS5Mc2KeEGbhU8WMaEednEI0KJEZwQnoQ15rworlXU%2BYRwxUGXgT0hpJrUAEooZ5NEAybcw9elN5fmWd%2FVxKEvnqew5L2RFIaQku6kWKq14sWyWl4p2Yn18UTty6IilrBfjhFhwTwClNiggLqR76qlbwTCjQRxANknWjkAEqL%2BuTw5IybvbetumV9hn09YU6U51JMeX5tQMrd6FmJdsVYqDPVSmUUK5ZB4hHzn6GqBELqGpJ4SY1bluNp5P4SoCeTw3bLOpqwLEkfC%2F46dcXTPHR2iOESZ5R7rjOJplMTymBP%2BClTe2eW8OzS3Za0goTI%2Bgu0mP7GVi1qNcLHNTbiiGDIVX2UsKrI3PGhOPDbv57trTXFscRF2u1U507Uksqw1zzTGLEuYNp1FEMLC8gWaCgBspvI%2BjbeAqwihpV7st%2BHocp46MuuXUpuVUrcVzZl%2BeG%2F0rnuvbO6d6ov0kG2rHnWRTQkBWqRbxCvGecZT2cZbH1WcPYgZPeqxqDeevspjC4ANbmCIz9Lfpe324E%2B4X9%2F34gBQntKf8psJKIQ5hPbb1PaA8EMsz8LYweH8HYudBp7SzUon6sCXoBXZqFqvW8ytd2yFT7EkN7zc60vUd9Yx3Ouo5HZ48qVZO4vzluFSehktj0tFRz1yqh9xt3jiZnRwcS2bjatQ3mc1ceh%2BZFgJx7FuHbeTPerN53Ru50ZHDHSqXXbWoz6yWZv71DTqQMcTyJ01Z%2BS7L4TszMJYZ0bqC6umU3DGquZeEAGIjcBkySUCGz3ie5VsATeWLwLdt9Le%2FVNr2nR4uaN152rhFaHpfaZqqNzj7mtAooe%2BESW%2BOXxtjRsuebCJOwT17cGkeDAE4ON8eSrLMhwQXL87i%2FPo8ZRVUI0rLl0Uvl2w1Zwiu8w8bU2JxDiyaENiUhBiOrUeMWJ8Fgysz%2B6%2FUs71fSfWoxYlRvZe1%2FQd6hHxYsfyoIvb08suUvvgD%3C%2Fdiagram%3E%3C%2Fmxfile%3E)
