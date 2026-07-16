# create-subpages.ps1
# Programmatically create all nested sub-service page fragments with rich, SEO-friendly HTML content.
$ErrorActionPreference = "Stop"

$workspaceRoot = Get-Item .
$srcPages = Join-Path $workspaceRoot "src\pages"

$subpages = @(
    # --- GENERAL DENTISTRY ---
    @{
        Path = "general-dentistry/dental-cleanings-exams.html"
        Title = "Dental Cleanings & Exams | Dentist Crofton, MD | Crofton Dental Center"
        Desc = "Schedule a professional dental cleaning and exam with Dr. Rahat Sood at Crofton Dental Center. Protect your teeth and maintain dental wellness."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Preventative Care</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Dental Cleanings & Comprehensive Exams</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Regular preventative dental cleanings and comprehensive exams are the core of a lifetime of healthy smiles. Dr. Rahat Sood and our expert hygienists, Michelle and Suzy, provide exceptionally thorough, gentle care.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">The Cleaning Process</h2>
    <p style="margin-bottom: var(--space-md);">During your cleaning, our hygienist will gently remove plaque and tartar (hardened minerals) from your teeth using specialized tools. Afterward, we polish your enamel to remove surface stains and apply a protective fluoride treatment if needed to strengthen your teeth.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">The Comprehensive Exam</h2>
    <p style="margin-bottom: var(--space-md);">Dr. Sood will perform a detailed evaluation of your mouth. She checks for signs of tooth decay, inspects existing restorations (fillings, crowns), assesses gum health, performs an oral cancer screening, and reviews low-radiation digital X-rays to check beneath the surface.</p>

    <div class="Polaris-Banner" style="margin-top: var(--space-xl);">
      <div class="Polaris-Banner__Content">
        <h4 class="Polaris-Banner__Title">No Insurance? Save with our Smile Club!</h4>
        <p style="font-size: 0.95rem; margin-bottom: 0;">Our in-house Smile Club includes two professional cleanings, two comprehensive exams, two fluoride applications, and necessary X-rays annually for a low yearly membership. <a href="../../crofton-dental-center-smile-club/">Learn more here &rarr;</a></p>
      </div>
    </div>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Request Your Appointment</button>
    </div>
  </div>
</section>
"@
    },
    @{
        Path = "general-dentistry/gum-disease.html"
        Title = "Gum Disease Treatment | Periodontal Therapy Crofton, MD"
        Desc = "Get scaling and root planing gum disease treatment in Crofton, MD. Stop bleeding gums and protect teeth with Dr. Rahat Sood."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Periodontal Health</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Gum Disease Treatment (Periodontal Therapy)</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Healthy gums are the foundation of your teeth. Gum disease, or periodontal disease, is a bacterial infection of the gum tissue that, if left untreated, can lead to tooth loss and bone destruction.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Scaling & Root Planing (Deep Cleaning)</h2>
    <p style="margin-bottom: var(--space-md);">For patients with active gum disease (gingivitis or periodontitis), we perform scaling and root planing. Scaling removes plaque and tartar from above and below the gumline. Root planing smooths the roots of your teeth to help the gums re-attach and prevent bacteria from collecting.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Comfort During Deep Cleanings</h2>
    <p style="margin-bottom: var(--space-md);">Your comfort is crucial to us. We apply local numbing gels or local anesthetics, and offer nitrous oxide or oral conscious sedation to ensure your deep cleaning is completely pain-free and relaxing.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Schedule Gum Evaluation</button>
    </div>
  </div>
</section>
"@
    },
    @{
        Path = "general-dentistry/mouthguards.html"
        Title = "Custom Mouthguards & Nightguards | Crofton Dental Center"
        Desc = "Protect your teeth from sports injury or clenching with custom mouthguards. Dr. Sood designs athletic guards and nightguards in Crofton, MD."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Bite Protection</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Custom Mouthguards & Nightguards</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Protect your teeth from external trauma or internal clenching pressure. We fabricate high-quality, custom-fit appliances using precise digital impressions.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Nightguards for Clenching & Grinding (Bruxism)</h2>
    <p style="margin-bottom: var(--space-md);">Grinding your teeth at night can cause worn enamel, cracked teeth, jaw pain, and severe headaches. Our custom nightguards place a durable, comfortable barrier between your teeth, relieving muscle tension and preventing dental wear.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Athletic Sports Guards</h2>
    <p style="margin-bottom: var(--space-md);">Store-bought mouthguards are bulky and make breathing difficult. Our custom-designed sports guards offer maximum impact shock absorption, stay secure in your mouth, and allow you to speak and breathe easily.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Order Custom Mouthguard</button>
    </div>
  </div>
</section>
"@
    },

    # --- COSMETIC DENTISTRY ---
    @{
        Path = "cosmetic-dentistry/dental-veneers.html"
        Title = "Porcelain Veneers | Cosmetic Dentist Crofton, MD | Crofton Dental Center"
        Desc = "Transform chipped, stained, or gapped teeth with porcelain veneers in Crofton, MD. Dr. Rahat Sood offers custom aesthetic veneers."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Smile Design</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Porcelain Veneers</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Porcelain veneers are ultra-thin, custom-made shells of ceramic material designed to cover the front surface of your teeth, correcting chips, gaps, alignment issues, and severe stains.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">The Veneers Process</h2>
    <p style="margin-bottom: var(--space-md);">First, Dr. Sood will design your smile using iTero digital scans and clinical mock-ups. Next, the teeth are prepared by removing a tiny fraction of enamel. Custom porcelain shells are then fabricated by a dental ceramist and bonded permanently, creating a stunning, natural smile.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Book Veneers Consultation</button>
    </div>
  </div>
</section>
"@
    },
    @{
        Path = "cosmetic-dentistry/teeth-whitening.html"
        Title = "Teeth Whitening | Zoom! Whitening Crofton, MD | Crofton Dental Center"
        Desc = "Get bright teeth with Zoom! in-office whitening in Crofton, MD. Save with our Zoom whitening deal including custom take-home trays."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Enamel Brightening</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Zoom! Teeth Whitening</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Over time, coffee, tea, wine, and aging can stain your teeth. We provide Zoom! in-office whitening to safely brighten your teeth up to 8 shades in just one hour.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">In-Office vs. Take-Home Whitening</h2>
    <p style="margin-bottom: var(--space-md);">Our **In-Office Zoom Special ($399)** includes a protective gum gel, professional bleach gel, and a laser light treatment. We also include custom-fitted take-home trays for easy monthly maintenance at home.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Claim Zoom Whitening Special</button>
    </div>
  </div>
</section>
"@
    },
    @{
        Path = "cosmetic-dentistry/smile-makeover.html"
        Title = "Smile Makeover | Cosmetic Dentist Crofton, MD | Crofton Dental Center"
        Desc = "Revitalize your smile with a customized smile makeover in Crofton, MD. Dr. Sood combines veneers, crowns, and whitening for a new look."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Complete Transformation</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Smile Makeover</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">A smile makeover combines multiple cosmetic and restorative treatments to completely transform the health, function, and aesthetic look of your teeth.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Your Custom Design</h2>
    <p style="margin-bottom: var(--space-md);">Dr. Sood evaluates your facial profile, lip line, and tooth shape to design a customized plan. This plan may incorporate porcelain veneers, crowns, dental implants, Invisalign, and gum contouring to achieve your dream smile.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Request Makeover Consultation</button>
    </div>
  </div>
</section>
"@
    },
    @{
        Path = "cosmetic-dentistry/tooth-bonding.html"
        Title = "Cosmetic Tooth Bonding | Crofton Dental Center"
        Desc = "Fix minor chips and gaps quickly with cosmetic tooth bonding in Crofton, MD. Tooth-colored composite resins placed in a single visit."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Quick Repairs</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Cosmetic Tooth Bonding</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Cosmetic bonding is a fast, non-invasive, and cost-effective way to repair chipped, slightly decayed, or gapped teeth in a single visit.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">The Bonding Procedure</h2>
    <p style="margin-bottom: var(--space-md);">Dr. Sood prepares the enamel and applies a durable, tooth-colored composite resin. The resin is sculpted to the perfect shape, hardened with a special curing light, and polished to match the shine of your natural teeth.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Book Bonding Appointment</button>
    </div>
  </div>
</section>
"@
    },
    @{
        Path = "cosmetic-dentistry/snap-on-smile.html"
        Title = "Snap-On Smile | Cosmetic Dentist Crofton, MD | Crofton Dental Center"
        Desc = "Get a beautiful temporary smile with Snap-On Smile in Crofton, MD. Comfortable, non-invasive, reversible plastic teeth that snap in place."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Non-Invasive Style</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Snap-On Smile®</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">A Snap-On Smile is an affordable, reversible, and completely non-invasive cosmetic option. It is a set of thin, lightweight plastic teeth that snap directly over your existing teeth without drills or needles.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Ideal Candidates</h2>
    <p style="margin-bottom: var(--space-md);">It is perfect for patients with missing teeth, gaps, or stains who are not ready for permanent implants or veneers, or who want a beautiful smile placeholder for special events.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Request Snap-On Info</button>
    </div>
  </div>
</section>
"@
    },
    @{
        Path = "cosmetic-dentistry/botox.html"
        Title = "Cosmetic & Therapeutic Botox® | Crofton Dental Center"
        Desc = "Smooth wrinkles and relieve TMJ pain with Botox® injections in Crofton, MD. Dr. Rahat Sood offers targeted botox treatment."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Cosmetic & Therapeutic</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Botox® Treatments</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Botox® is widely known for its ability to smooth facial wrinkles. In dentistry, it is also a highly effective therapeutic treatment to relax facial muscles and relieve chronic TMJ pain and migraines.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Cosmetic Botox</h2>
    <p style="margin-bottom: var(--space-md);">Smooth frown lines, crow’s feet, and forehead wrinkles surrounding your smile. Dr. Sood’s extensive training in facial anatomy ensures natural-looking, beautiful results.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Therapeutic Botox for TMJ & Clenching</h2>
    <p style="margin-bottom: var(--space-md);">Injected into the masseter (jaw) muscles, Botox prevents severe clenching and teeth grinding (bruxism), reducing jaw soreness, clicking joints, and tension migraines.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Book Botox Consultation</button>
    </div>
  </div>
</section>
"@
    },

    # --- ORTHODONTICS ---
    @{
        Path = "orthodontics/invisalign.html"
        Title = "Invisalign® Clear Aligners | Dentist Crofton, MD | Crofton Dental Center"
        Desc = "Get straight teeth without braces. Dr. Rahat Sood is an Invisalign provider in Crofton, MD, offering clear removable plastic aligners."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Clear Aligners</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Invisalign® Clear Aligners</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Straighten your smile discreetly and comfortably. Invisalign® uses a sequence of clear, removable, medical-grade plastic trays to align your teeth without metal brackets or wires.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">The Invisalign Advantage</h2>
    <p style="margin-bottom: var(--space-md);">Unlike braces, Invisalign trays are removable. You can eat all your favorite foods, brush and floss normally, and smile confidently throughout treatment. Our iTero scanners scan your arches digitally, so you can preview your straight smile before beginning treatment.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Claim Invisalign Consultation</button>
    </div>
  </div>
</section>
"@
    },
    @{
        Path = "orthodontics/your-first-orthodontic-appointment.html"
        Title = "First Orthodontic Visit | Crofton Dental Center"
        Desc = "Prepare for your first orthodontic visit at Crofton Dental Center. Learn about Invisalign digital scans, diagnostics, and pricing options."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Prepare Your Visit</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Your First Orthodontic Appointment</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Taking the first step toward a straighter smile is exciting. Here is what to expect during your initial orthodontic evaluation at Crofton Dental Center.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">The Step-by-Step Scan</h2>
    <p style="margin-bottom: var(--space-md);">First, we perform a 3D digital scan of your arches using our iTero scanner. This compiles a virtual 3D map of your teeth, showing misalignment patterns and simulating your final straightened results. Dr. Sood reviews this map and outlines your alignment timeline and financing plan.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Book Your Scan</button>
    </div>
  </div>
</section>
"@
    },

    # --- RESTORATIVE DENTISTRY ---
    @{
        Path = "restorative-dentistry/tooth-fillings.html"
        Title = "Composite Tooth Fillings | Restorative Dentist Crofton, MD"
        Desc = "Repair cavities with tooth-colored composite fillings in Crofton, MD. Get durable, mercury-free restorations with Dr. Rahat Sood."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Mercury-Free</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Composite Tooth Fillings</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Restore cavities and slight enamel fractures with tooth-colored composite fillings. We provide durable, mercury-free dental restorations that blend with your natural teeth.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Benefits of Composite Resin</h2>
    <p style="margin-bottom: var(--space-md);">Unlike old metal silver (amalgam) fillings, composite resins bond directly to your enamel, preserving more natural tooth structure. They do not expand or contract with temperature changes, protecting your tooth from cracking.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Schedule Filling Visit</button>
    </div>
  </div>
</section>
"@
    },
    @{
        Path = "restorative-dentistry/root-canals.html"
        Title = "Root Canal Therapy | Dentist Crofton, MD | Crofton Dental Center"
        Desc = "Relieve severe tooth pain and save your tooth. Dr. Rahat Sood offers gentle, pain-free root canal treatment in Crofton, MD."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Gentle Care</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Root Canal Therapy</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">A root canal is a highly effective, gentle procedure designed to relieve severe toothaches caused by deep tooth decay, enamel infection, or internal trauma, saving your natural tooth from extraction.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">The Root Canal Process</h2>
    <p style="margin-bottom: var(--space-md);">Dr. Sood gently removes the infected inner pulp from the root channels, sanitizes the space, and seals it with a rubber-like material. The tooth is then reinforced with a porcelain crown, fully restoring its chewing strength.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Request Emergency Relief</button>
    </div>
  </div>
</section>
"@
    },
    @{
        Path = "restorative-dentistry/dental-crowns-bridges.html"
        Title = "Dental Crowns & Bridges | Restorative Dentist Crofton, MD"
        Desc = "Restore broken or missing teeth with dental crowns and bridges in Crofton, MD. Custom-shaded porcelain restorations by Dr. Rahat Sood."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Restore Enamel</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Dental Crowns & Bridges</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Restore chewing function and smile aesthetics. We design custom-shaded, durable porcelain crowns and bridges to reinforce or bridge missing teeth.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">What is a Crown vs. Bridge?</h2>
    <p style="margin-bottom: var(--space-md);">A **dental crown** is a custom cap that fits over a cracked, weak, or root-canal-treated tooth to shield it. A **dental bridge** replaces one or more consecutive missing teeth, using crowns on the surrounding healthy teeth as anchors to support a prosthetic tooth in the middle.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Book Crowns Appointment</button>
    </div>
  </div>
</section>
"@
    },
    @{
        Path = "restorative-dentistry/dentures.html"
        Title = "Partial & Full Dentures | Crofton Dental Center"
        Desc = "Regain your smile with custom partial and full dentures in Crofton, MD. Comfortable, natural-looking tooth replacement by Dr. Rahat Sood."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Comfort Fit</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Custom Removable Dentures</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Regain your speech, chewing ability, and smile structure. We fabricate lightweight, natural-looking partial and full dentures designed to fit comfortably.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Types of Dentures</h2>
    <p style="margin-bottom: var(--space-md);">**Full dentures** replace an entire arch of missing teeth, utilizing natural suction or mini implants for support. **Partial dentures** fill in gaps when some healthy teeth remain, anchoring securely using metal or acrylic clasps.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Request Denture Consultation</button>
    </div>
  </div>
</section>
"@
    },

    # --- DENTAL IMPLANTS ---
    @{
        Path = "dental-implants/all-on-4-implants.html"
        Title = "All-on-4® Dental Implants | Crofton Dental Center"
        Desc = "Secure a full bridge of teeth with only four implants. Learn about All-on-4® dental implants in Crofton, MD with Dr. Rahat Sood."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Full Arch Fix</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">All-on-4® Dental Implants</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">All-on-4® dental implants offer a permanent, non-removable alternative to loose dentures, securing a complete arch of prosthetic teeth using only four titanium implants.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">The All-on-4 Advantage</h2>
    <p style="margin-bottom: var(--space-md);">By tilting the posterior implants at an angle, Dr. Sood maximizes bone contact, often avoiding the need for expensive and painful bone grafts. You receive a durable, natural-looking set of teeth that functions exactly like real teeth.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Book All-on-4 Consultation</button>
    </div>
  </div>
</section>
"@
    },
    @{
        Path = "dental-implants/mini-dental-implants.html"
        Title = "Mini Dental Implants | Dentist Crofton, MD | Crofton Dental Center"
        Desc = "A less invasive tooth replacement option. Explore mini dental implants in Crofton, MD with Dr. Rahat Sood, ideal for loose dentures."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Mini Implants</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Mini Dental Implants (MDIs)</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Mini dental implants are a smaller, less invasive alternative to traditional implants, specifically designed for patients with reduced jawbone density or to anchor loose dentures.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Denture Anchoring</h2>
    <p style="margin-bottom: var(--space-md);">Mini implants can be placed in a single visit under local anesthetic. Your existing removable denture can be modified to snap onto the mini implants, eliminating slipping, speech impediments, and messy adhesives.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Request Mini Implants Info</button>
    </div>
  </div>
</section>
"@
    },
    @{
        Path = "dental-implants/same-day-smile.html"
        Title = "Same-Day Smile Implants | Crofton Dental Center"
        Desc = "Walk out with a new smile in one day. Explore Same-Day Smile dental implants in Crofton, MD with Dr. Rahat Sood."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Immediate Restores</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Same-Day Smile Implants</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Walk in with missing or failing teeth, and walk out with a beautiful, temporary set of fixed teeth in a single clinical visit, avoiding long healing months without teeth.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Who is a Candidate?</h2>
    <p style="margin-bottom: var(--space-md);">Same-day smile procedures utilize guided 3D CBCT scans to plan implant positions beforehand. If bone density allows, Dr. Sood places the implants and attaches a temporary bridge in the same appointment. After healing, a final permanent bridge is placed.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Request Same-Day Consultation</button>
    </div>
  </div>
</section>
"@
    },
    @{
        Path = "dental-implants/full-mouth-reconstruction.html"
        Title = "Full Mouth Reconstruction | Crofton Dental Center"
        Desc = "Rebuild your entire smile. Explore comprehensive full mouth reconstructions in Crofton, MD combining implants, crowns, and therapy."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Total Restoration</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Full Mouth Reconstruction</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">A full mouth reconstruction is a comprehensive treatment plan that combines restorative, cosmetic, implant, and gum procedures to rebuild your entire smile.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Clinical Suitability</h2>
    <p style="margin-bottom: var(--space-md);">Ideal for patients with severe tooth decay, advanced tooth wear from clenching, periodontal damage, or multiple missing teeth. Dr. Sood plans each phase sequentially to ensure a perfect bite, chewing utility, and a beautiful look.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Schedule Reconstruction Consultation</button>
    </div>
  </div>
</section>
"@
    },

    # --- ANXIETY & SEDATION ---
    @{
        Path = "relieving-dental-anxiety/sedation-options.html"
        Title = "Sedation Options for Dental Anxiety | Crofton Dental Center"
        Desc = "Explore nitrous oxide and oral conscious sedation options in Crofton, MD. Dr. Rahat Sood specializes in comfortable, worry-free dental care."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Relaxation Methods</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Dental Sedation Options</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Overcome dental fear and stay completely relaxed during your treatments. Dr. Rahat Sood offers safe, customized conscious sedation options.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Nitrous Oxide (Laughing Gas)</h2>
    <p style="margin-bottom: var(--space-md);">Nitrous oxide is inhaled through a small nose mask throughout your visit. It induces a gentle, happy, relaxed sensation. The gas wears off within three minutes of stopping the flow, allowing you to drive home normally.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Oral Conscious Sedation</h2>
    <p style="margin-bottom: var(--space-md);">Oral sedation involves taking a small prescription pill shortly before your appointment. You remain awake and responsive, but experience deep calm. *Note: You must arrange a companion driver to take you home after treatment.*</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Request Sedation Info</button>
    </div>
  </div>
</section>
"@
    },

    # --- ORAL SURGERY ---
    @{
        Path = "oral-surgery/tooth-removal.html"
        Title = "Tooth Extractions & Removal | Crofton Dental Center"
        Desc = "Get gentle, pain-free tooth extractions in Crofton, MD. Dr. Rahat Sood provides surgical and simple tooth removals under sedation."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Extraction Care</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Tooth Extractions (Tooth Removal)</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">We focus on preserving your natural teeth, but sometimes an extraction is necessary to save your surrounding gums and teeth from severe decay, fracture, or abscess infection.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Gentle Procedures & Sedation</h2>
    <p style="margin-bottom: var(--space-md);">Dr. Sood performs extractions with a light touch and local anesthetics, alongside nitrous or oral conscious sedation if desired. We detail post-extraction instructions to support rapid healing and prevent dry socket.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Schedule Extraction Evaluation</button>
    </div>
  </div>
</section>
"@
    },
    @{
        Path = "oral-surgery/wisdom-teeth-removal.html"
        Title = "Wisdom Teeth Removal | Dentist Crofton, MD | Crofton Dental Center"
        Desc = "Need wisdom teeth extractions in Crofton, MD? Dr. Rahat Sood offers wisdom teeth removal under comfortable sedation options."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Third Molars</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">Wisdom Teeth Extraction</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Wisdom teeth, or third molars, typically emerge in late adolescence. If they are impacted, grow at angles, or crowd your existing arches, they can cause serious pain and sinus pressure.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Safe Extraction Protocol</h2>
    <p style="margin-bottom: var(--space-md);">We assess wisdom teeth using 3D CBCT scanners to track nerve paths precisely. Extractions are performed under relaxing sedation, and we supply detailed homecare guidance to support rapid recovery.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Request Wisdom Teeth Consult</button>
    </div>
  </div>
</section>
"@
    },

    # --- TMJ TREATMENT ---
    @{
        Path = "tmj-treatment/migraine-solutions.html"
        Title = "Migraine Relief & TMJ Therapy | Crofton Dental Center"
        Desc = "Stop clenching-related migraine headaches in Crofton, MD. Learn about custom dental splints and therapeutic Botox migraine relief."
        Tab = "services"
        Body = @"
<section class="section-padding">
  <div class="container" style="max-width: 800px;">
    <span class="text-teal" style="font-size: 0.85rem; font-weight: 600; text-transform: uppercase; letter-spacing: 0.05em; display: block; margin-bottom: var(--space-xs);">Chronic Relief</span>
    <h1 style="font-size: 2.5rem; margin-bottom: var(--space-md);">TMJ Migraine Solutions</h1>
    <p style="font-size: 1.1rem; margin-bottom: var(--space-lg);">Many chronic migraines and tension headaches are caused by teeth clenching and grinding (bruxism) at night. We offer custom dental splints and therapeutic Botox® injections to block muscle tension.</p>
    
    <h2 style="margin-top: var(--space-xl); margin-bottom: var(--space-sm);">Therapeutic Botox for Migraines</h2>
    <p style="margin-bottom: var(--space-md);">By injecting tiny doses of Botox® into the masseter and temporalis muscles, we block nerve signals that trigger severe clenching. This relaxes the jaw, prevents enamel wear, and eliminates grinding-related migraines.</p>
    
    <div class="text-center" style="margin-top: var(--space-2xl);">
      <button class="Polaris-Button Polaris-Button--primary request-btn-drawer">Request TMJ Migraine Consultation</button>
    </div>
  </div>
</section>
"@
    }
)

Write-Host "Creating $($subpages.Count) subpages..." -ForegroundColor Cyan

foreach ($page in $subpages) {
    $destPath = Join-Path $srcPages $page.Path
    $parentDir = Split-Path -Path $destPath -Parent
    if (-not (Test-Path $parentDir)) {
        New-Item -ItemType Directory -Path $parentDir -Force | Out-Null
    }
    
    $fileContent = @"
<!--
title: $($page.Title)
description: $($page.Desc)
activeTab: $($page.Tab)
-->
$($page.Body)
"@
    
    $fileContent | Out-File -FilePath $destPath -Encoding utf8 -Force
    Write-Host "Created subpage fragment: $($page.Path)" -ForegroundColor Green
}

Write-Host "All subpages created successfully!" -ForegroundColor Green
