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
![alt text](https://app.diagrams.net/#G1fhk2seuK_qYV0U-VzX3wY4Es8CrPKXUo)

[ https://viewer.diagrams.net/?tags=%7B%7D&highlight=0000ff&edit=_blank&layers=1&nav=1&page-id=7uqylNF0esgqoHjO1SLy&title=Functional%20Viewpoint%20#R%3Cmxfile%3E%3Cdiagram%20id%3D%22KD5jMLtUj7xpMkqUFyOv%22%20name%3D%22Page-1%22%3E7VnLctowFP0alsn4gQUsE5K0izLNhE7TdKfYF6xGthhZBOjXV8aSX3JqQihuSTdgHVkSOudIurr03HG0%2FsDxIpywAGjPsYJ1z73qOQ5CtvxMgU0GDGwFzDkJMsgqgCn5CRloa3RJAkgUlkGCMSrIogr6LI7BFxUMc85W1ddmjAYVYIHnYABTH1MTvSeBCDN06FkF%2FhHIPNQj25aqibB%2BWQFJiAO2KkHudc8dc8ZE9hStx0BT7qq83LxQm%2F8wDrHYpcHg8%2FPS%2FT75gpLpZfB1%2BOP25unTmZP18ozpUk14QnzOzsYsFpxRCrznIBwteu5l%2FJikX2oyYqMZ4mwZB5AOYsvqVUgETBfYT2tX0hISC0VEVfWMUDpmlPFtW3c2mzm%2BL%2FFEjvYEpZoAPSIP5eM9AxewfnHmds6n9CGwCATfyFd0g4GSQHnQRaq8KhS1tUxhSU39HlYmmuddFzzLB0X1K2h3DdpvWUIEYbFEpxAn7BR4d5FX5d3qmve%2BaXcmToJrb2T9ZVx7Btd3gH3l8fsQ0nPi5GjvO13Tjt7l1tI970ODd4NWiIOLNCSRpZjFUKWx4NzKKYLACE5aCSoR4DXMX2McKBbkudp9EylqhFtG5MA5%2F3J%2FaT5SdRcJW3IfVKtyVNLWkVvrSGA%2BB2F0tNUon%2Fb%2Bso3et2zOaD%2FZjKPdGZ27w6Mqpy8SB5IO1kR8UzXp80OKn3uqdLUuvXa10QUZJG%2B%2BlQulVmmxaLYtbV5pEzmXrR7tkWTGdVvk05Xt%2BvXgZN%2FdwuvXOrKPu1vY5n3pTZ7L%2FVNY5kF78Df%2B0V4t%2FPlQtmejVw%2FoOe9f8ByqbXX9ulV29Rwatpj3T3vOvCwexnOv27P22R8P6Dm0o%2Be8Lj3nWTXPDffd57xaR0eOimzzotyF53b3T6svUJe%2BqIddfW9PX7j1jo7tC%2FNS38X5d0BfOCfhi%2FxaW78OH8sXZtbhmoIvOPFx2ni85Ftp2hIPAtaiaphqFkEZqpxyUBCmZB7Loi%2BHAYlfpumFdPQLVRGRIEiHaUxnNN3i3pSfMC5aTek4u8FZ9QV9sPyEPTAkmgBOlhyirTLWVPKE23NyJyORcSlpkGh0VIXMFNIdEzhL3Z2qCqgW6bgDz1ABHVMFx0wrVNdJkU49VU3qKyM%2FlrpaGTrK%2BL936ePFblfIPtCykcXiT%2BosYCj%2B6XevfwE%3D%3C%2Fdiagram%3E%3Cdiagram%20id%3D%227uqylNF0esgqoHjO1SLy%22%20name%3D%22Page-2%22%3E7VnLcpswFP0aT1fuIMDYWdqOnSz6yNTTJlllFBCPViAihA39%2BgokDBhqHDskaZqNBx30vOcc6coMtLmfXFAYup%2BJhfBAVaxkoJ0PVNUwAP%2FNgFQAYyABh3qWgJQSWHm%2FkQBBgcaehSKJCYgRgpkX1kGTBAEyWQ2DlJJNvZpNsFUDQuigBrAyIW6i157FXIFORkqJXyLPcYuRgSLf%2BLCoLIHIhRbZVCBtMdDmlBAmnvxkjnAWuyIus7XCFnF8d51uxgvfdL7cacuh6Gz5mCbbJVAUsKO7Rhc%2FyPz2%2B8PV0lAmvpXSH6t0qMulsbSIF7J4%2BGSRUOYShwQQL0p0RkkcWCjrVeGlss4nQkIOAg7%2BRIylUgswZoRDLvOxfIsSj91Unm%2Bzrj6OZOk8kT3nhbQoBIymN9VCpVVWLJvlpaKdWF%2B2qB05dMRS1otITE20J4BSGwxSB7E99cBWMNxoiPiIT5K3owhD5q3rk4NS8s623rbpFfH4tFVFuhOM5fjSnKqu1rsQ85KtSnHwh8o0SiiXzCPkI0dfQxzLJTT1hDG3eqabjesxtAphHs8N32zqqoBRKPxve0mmrpntYTwnmNC8I822bdU0OR4xSn6hyhvLuDdGxpbsNaIMJUfQ3aRH9nJm1KNcLHNTbii6DIVb2UsKrI3PGhOPDbvx7trTXFscRF2uVU907Uksg4a55oRHiWQNp2FICTTdgWpAPzNScB%2BF28BVhFHSDrot%2BHocB8Z63XKgaTmgtnjO6Mtz43%2FFc31751RPtJ9kI%2FW4k2xKKUwr1cKsQrRnHKV9nOVx9fmDmMGTHqtqw%2FmrNGLI%2F8AXpsgM%2FW36XhvthPvFfT85IMUJrGl2U%2BGlgASoHtv6HlAeiOUZeFsYvL8DsfOgU9pZqUR91BL0Ajs1iwX1%2FEpTd8gUe1LD%2B42ONG1HPZOdjnpOh8%2BeVCsncf5yXCpPw6V%2B1tFRz1yCQ%2B42b5zMTg6OJbNxNeqbzGYuvY9ME8Mo8szDNvJnvdm87o1c78jhDpXLrlrAM6ulmX99QzbiDPH8SVVWnsNz%2BM4MjGdGrK6gejold4xq7iUhiPkImQy5JBDHZ1me5ZkQT%2BUL37Ms%2FLe%2FVNr2nR4uaN152qRFaFpfaRrQGpx9jVkYs3fCpDcnr40xvWVPNnBGwT1%2FcFgeDAHYJN8eSrKMh5gUL4ZRfn2e8gpAD5PyZdHLJV%2FNEKN1%2FmFjSs2MA5PFFDUlIYbj6xEj1mfB4crM%2Fiv1bO9XUj2gODGq97K2%2F0CPkA8vlh9VxJ5efpnSFn8A%3C%2Fdiagram%3E%3C%2Fmxfile%3E]
Here is the link to this project's presentation: <br/>
The Furata Pendulum was studied, modeled and simulated. The Furata Pendulum is a driven arm that rotates on the horizontal plane, which is connected to another arm which rotates on the vertical plane. This project's objective have the arm in the horizontal plane balance vertically by controlling motors and the required force to do so. This project will be done virtually, utilizing MATLAB and SIMULNK and CoppeliaSim.
