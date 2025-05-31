<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="dinner.css">
    <style>
        /* Add this to make sure dropdowns are hidden initially */
        .dropdown-content {
            display: none;
        }

        /* Show dropdown when the "show" class is added */
        .dropdown-content.show {
            display: block;
        }

        /* Rotate arrow when the "rotate" class is added */
        .arrow.rotate {
            transform: rotate(180deg);
        }
        body {
    background-color: rgb(227, 234, 214);
    }
    </style>
</head>
<body>
    <div class="gallery-container">
        <!-- Gallery Item 1 -->
        <div class="gallery-item">
            <img src="https://natashaskitchen.com/wp-content/uploads/2020/02/Creme-Brule-Recipe-2.jpg" alt="Food 1">
            <div class="image-caption">
                <p>Creme Brule</p>
                <span class="arrow">&#9660;</span>
            </div>
            <div class="dropdown-content">
                <p>Preheat oven to 325°F. Place 4 ramekins in a large baking dish. Boil water in a kettle for later use.</p>
                <p>Heat cream with a pinch of salt and vanilla bean seeds (scraped from the pod) over low heat until hot but not simmering. Remove from heat. In a separate bowl, whisk sugar and egg yolks for 30 seconds until combined. </p>
                <p>Gradually whisk in ½ cup of the warm cream to temper the eggs, then slowly add the remaining cream while whisking.</p>
                <p>Strain the mixture through a fine mesh strainer into a clean bowl to remove any lumps or scrambled bits. Pour the custard into the ramekins.</p>
                <p>Carefully pour boiling water into the baking dish, filling halfway up the sides of the ramekins. Bake for 30-40 minutes, until the custard is set but still slightly jiggly in the center.</p>
                <p>Once cooled, sprinkle a thin layer of sugar on top, then torch or broil until caramelized. Serve with berries or toppings if desired.</p>
            </div>
        </div>

        <!-- Gallery Item 2 -->
        <div class="gallery-item">
            <img src="https://www.simplyrecipes.com/thmb/3S8HtOSKvpoQmw4wgo5yCW2qjVE=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Simply-Recipes-Baklava-LEAD-11-b2a228e6db9f43d697ae3aed378d0b2a.jpg" alt="Food 2">
            <div class="image-caption">
                <p>Baklava</p>
                <span class="arrow">&#9660;</span>
            </div>
            <div class="dropdown-content">
                <p>Butter a 9x13-inch baking dish. Toss together nuts and cinnamon. Unroll phyllo and cut the whole stack in half to fit the dish.</p>
                <p>Cover phyllo with a damp cloth while assembling the baklava, to keep it from drying out. Place 2 sheets of phyllo in the bottom of the prepared dish. Brush generously with some of the melted butter.</p>
                <p>Sprinkle 2 to 3 tablespoons of the nut mixture on top. Repeat layers until all ingredients are used, ending with about 6 sheets of phyllo. Using a sharp knife, cut baklava into 4 long rows, then diagonally 9 times to make 36 diamond shapes.</p>
                <p>Bake in the preheated oven until golden brown and crisp, about 50 minutes. While baklava is baking, combine sugar and water in a small saucepan over medium heat and bring to a boil. Stir in honey, vanilla, and lemon zest; reduce heat and simmer 20 minutes.</p>
                <p>Remove baklava from the oven and immediately spoon syrup over it. Let cool completely before serving. Store uncovered.</p>
            </div>
        </div>

        <!-- Gallery Item 3 -->
        <div class="gallery-item">
            <img src="https://media.istockphoto.com/id/1201572375/photo/bingsu-mango-with-ice-cream-korean-dessert.jpg?s=612x612&w=0&k=20&c=kqr-IZuqOzJkGU5C2HOxjwN_e0_UfXSiZHJW2a6IGFo=" alt="Food 3">
            <div class="image-caption">
                <p>Bingsu (Korean Shaved Ice)</p>
                <span class="arrow">&#9660;</span>
            </div>
            <div class="dropdown-content">
                <p>In a freezer-safe container, mix the milk and condensed milk together using a whisk. Cover the mixture and freeze for at least 5 hours or overnight. While the mixture is freezing, prepare your toppings.</p>
                <p>You can chop up some fruits like mangoes, strawberries, kiwi or bananas. Set them aside. After the mixture has frozen, remove it from the container and wrap it in some plastic wrap.</p>
                <p>Hold the wrapped up milk block with a towel to protect your skin and begin shaving it into a bowl using a grater. You can also use a food processor with a grater attachment. Add your favourite toppings and drizzle some condensed milk on top. Enjoy!</p>
            </div>
        </div>

        <!-- Gallery Item 4 -->
        <div class="gallery-item">
            <img src="https://tastesbetterfromscratch.com/wp-content/uploads/2017/04/Tiramisu-14.jpg" alt="Food 4">
            <div class="image-caption">
                <p>Tiramisu</p>
                <span class="arrow">&#9660;</span>
            </div>
            <div class="dropdown-content">
               <p>Bake a cake at 200°C (390°F) for 30-35 minutes. Check with a toothpick, cool, and slice into sponge fingers.</p>
               <p>Boil ½ cup water, mix in 2 tsp instant coffee, and let cool. (Optional: add rum or wine). Whip 200g mascarpone cheese with 6 tbsp powdered sugar until smooth.</p>
               <p>In a separate bowl, whip 1 cup cream until stiff peaks form, then fold into the mascarpone mix with 1 tsp vanilla extract. Dip sponge fingers in coffee syrup.</p>
               <p>Layer in a dish, spread half the mascarpone mix, add another layer of soaked sponge fingers, then the remaining mascarpone mix. Dust with 1-2 tsp cocoa powder.</p>
               <p>Cover and refrigerate for 4-5 hours or overnight. Slice and serve.</p>
            </div>
        </div>
    </div>

<div class="gallery-container">

    <div class="gallery-item" alt="Food 4">
        <img src="https://peanutbutterandjulie.com/wp-content/uploads/2007/12/Stacked-mini-apple-strudels-with-ice-cream.jpg" alt="Food 4">
        <div class="image-caption">
            <p>Apple Strudel</p>
            <span class="arrow">&#9660;</span>
        </div>
        <div class="dropdown-content">
            <p>Activate yeast by mixing it with 2-4 tbsp milk and a pinch of brown sugar. Let it sit until frothy.</p>
            <p>In a large bowl, mix the activated yeast with the rest of the dough ingredients. Knead until soft, non-sticky dough forms. Cover and let it rise for 20 minutes in a warm place.</p>
            <p>Divide dough into 4 parts and roll each into a circle. Cut each circle into 4 triangles. Slice lines on each triangle without cutting through.</p>
            <p>For the filling, grate apples and mix with brown sugar, cinnamon, and chopped nuts.</p>
            <p>Add filling to the center of each triangle, fold the ends over, and bake at 180°C (360°F) for 15-20 minutes until golden brown. Let cool, dust with powdered sugar, and enjoy!</p>
        </div>
    </div>


    <div class="gallery-item">
        <img src="https://pinkhairedpastrychef.com/wp-content/uploads/2021/06/Choco-Potato-Cake-4-1.jpg" alt="Food 4">
        <div class="image-caption">
            <p>Double-Chocolate ganache cake</p>
            <span class="arrow">&#9660;</span>
        </div>
        <div class="dropdown-content">
            <p>For the ganache, melt butter, both chocolates, and sour cream in a bowl over simmering water. Stir occasionally until smooth. Whisk in icing sugar until combined. Strain, cover with plastic wrap, and chill for 3 hours until thick and spreadable.</p>
            <p>Preheat oven to 180°C (160°C fan). Line a 20cm square cake pan with baking paper. In a saucepan, melt brown sugar, butter, milk, and cocoa powder over medium heat.</p>
            <p>Let cool slightly. Add flour, baking powder, and eggs, and whisk until smooth. Pour into the pan and level the surface.</p>
            <p>Bake for 40-45 minutes, then cool on a wire rack.</p>
            <p>Once the cake is cool, spread the ganache over the top and sides. Serve.</p>
        </div>
    </div>


    <div class="gallery-item">
        <img src="https://hips.hearstapps.com/hmg-prod/images/no-bake-pumpkin-cheesecake-secondary-64ad9d1151d66.jpg?crop=0.6666666666666666xw:1xh;center,top&resize=980:*" alt="Food 4">
        <div class="image-caption">
            <p>No-Bake Pumpkin Cheesecake</p>
            <span class="arrow">&#9660;</span>
        </div>
        <div class="dropdown-content">
           <p>For crust : Combine crushed gingersnaps, sugar, and melted butter in a medium bowl until the mixture looks like wet sand. Press into an 8” springform pan.</p>
           <p>In a large bowl, beat cream cheese until fluffy, then mix in pumpkin puree, powdered sugar, vanilla, cinnamon, nutmeg, and salt.</p>
           <p> Fold in whipped cream and pour over the crust. Smooth the top.</p>
           <p>Refrigerate for at least 4 hours or overnight. Serve with whipped cream and crushed gingersnaps.</p>
        </div>
    </div>


    <div class="gallery-item">
        <img src="https://hips.hearstapps.com/hmg-prod/images/triple-chocolate-trifle2-1670273710.jpg?crop=0.8333333333333334xw:1xh;center,top&resize=980:*" alt="Food 4">
        <div class="image-caption">
            <p>Triple-Chocolate Trifle</p>
            <span class="arrow">&#9660;</span>
        </div>
        <div class="dropdown-content">
            <p>For Mousse : In a heatproof bowl over simmering water, melt chocolate, granulated sugar, and 1/4 cup water, stirring until smooth. Let cool. In a separate bowl, beat egg whites until stiff peaks form.</p>
            <p>Whisk egg yolks, oil, and salt into the cooled chocolate mixture. Beat until thick, then gently fold in egg whites in 3 additions.</p>
            <p>For Tahini : Beat cream, tahini, and brown sugar until thickened and combined.</p>
            <p>Assembly : Crush cookies and 1 chocolate bar in a resealable bag. In a trifle dish, layer half of the chocolate cake, brush with 2 tablespoons rum, add half of the whipped cream, two-thirds of the mousse, and half the crushed cookies. </p>
            <p>Repeat layers with remaining ingredients, leaving a 1” whipped cream border. Top with broken chocolate pieces and crushed cookies.</p>
            <p>Refrigerate for at least 1 hour or up to 2 days before serving.</p>
        </div>
    </div>

</div>

    <!-- JavaScript -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const captions = document.querySelectorAll('.image-caption');

            captions.forEach(caption => {
                caption.addEventListener('click', function() {
                    const dropdown = caption.nextElementSibling;
                    const arrow = caption.querySelector('.arrow');

                    // First, close all dropdowns except the current one
                    document.querySelectorAll('.dropdown-content').forEach(content => {
                        if (content !== dropdown) {
                            content.classList.remove('show');
                        }
                    });
                    document.querySelectorAll('.arrow').forEach(otherArrow => {
                        if (otherArrow !== arrow) {
                            otherArrow.classList.remove('rotate');
                        }
                    });

                    // Toggle the current dropdown and rotate the arrow
                    dropdown.classList.toggle('show');
                    arrow.classList.toggle('rotate');
                });
            });
        });
    </script>

</body>
</html>