<%--
  Created by IntelliJ IDEA.
  User: Greg
  Date: 4/17/2016
  Time: 3:51 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>My Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="layout" content="main">
</head>
<body>
    <div class="container theme-shocase" role="main">
        <div class="page-header" align="center"><h1>Profile<br><small>The Only Beer Connoisseur is You</small></h1></div>
        <div class="container">
            <div class="row-fluid">
                <div class="col-md-2">
                    <img src="${createLinkTo(dir: 'images', file: '100x100.png')}"class="img-responsive"/><br><br><br>
                </div>
                <div class="col-md-6">
                    <h1>Name</h1><br>
                    <textarea form="profileform"> Describe yourself</textarea><br><br><br>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="col-sm-6">
            <form id="profileform" class="form-horizontal" role="form">
                <div class="form-group">
                    <h3><label class="control-label col-md-4" for="field1">Gender</label></h3>
                    <div class="col-md-5">
                        <select class="form-control" id="field1" name="gender">
                            <option>Male</option>
                            <option>Female</option>
                            <option>Other</option>
                        </select><br>
                    </div>
                </div>
                <div class="form-group">
                    <h3><label class="control-label col-md-4" for="field2">Age</label></h3>
                    <div class="col-md-5">
                        <select class="form-control" id="field2" name="age">
                            <option>21</option><option>22</option><option>23</option><option>24</option><option>25</option>
                            <option>26</option><option>27</option><option>28</option><option>29</option><option>30</option>
                            <option>31</option><option>32</option><option>33</option><option>34</option><option>35</option>
                            <option>36</option><option>37</option><option>38</option><option>39</option><option>40</option>
                            <option>41</option><option>42</option><option>43</option><option>44</option><option>45</option>
                            <option>46</option><option>47</option><option>48</option><option>49</option><option>50</option>
                            <option>51</option><option>52</option><option>53</option><option>54</option><option>55</option>
                            <option>56</option><option>57</option><option>58</option><option>59</option><option>60</option>
                            <option>51</option><option>62</option><option>63</option><option>64</option><option>65</option>
                            <option>56</option><option>67</option><option>68</option><option>69</option><option>70</option>
                            <option>61</option><option>72</option><option>73</option><option>74</option><option>75</option>
                            <option>66</option><option>77</option><option>78</option><option>79</option><option>80</option>
                            <option>71</option><option>82</option><option>83</option><option>84</option><option>85</option>
                            <option>76</option><option>87</option><option>88</option><option>89</option><option>90</option>
                            <option>81</option><option>92</option><option>93</option><option>94</option><option>95</option>
                            <option>86</option><option>97</option><option>98</option><option>99</option><option>100</option>
                        </select><br>
                    </div>
                </div>
                <div class="form-group">
                    <h3><label class="control-label col-md-4" for="field3">Experience</label></h3>
                    <div class="col-md-5">
                        <select class="form-control" id="field3" name="experience">
                            <option>Newbie</option>
                            <option>Novice</option>
                            <option>Intermediate</option>
                            <option>Expert</option>
                            <option>Veteran</option>
                        </select><br>
                    </div>
                </div>
                <div class="form-group">
                    <h3><label class="control-label col-md-4" for="field4">Home Town</label></h3>
                    <div class="col-md-5">
                        <input id="field4"type="text" name="homeTown"><br>
                    </div>
                </div>

            <g:submitButton name="Submit" value="Save" class="btn-lg"/>
                <br><br>
            </form>
            </div>
        </div>
    </div>
</body>
</html>