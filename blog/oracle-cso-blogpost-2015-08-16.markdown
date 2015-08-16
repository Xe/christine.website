No, You Really Can’t
====================

> Note: this was removed from Oracle's site. I thought this was so humorous 
that I had to share it here.

I have been doing a lot of writing recently. Some of my writing has been with 
my sister, with whom I write murder mysteries using the nom-de-plume Maddi 
Davidson. Recently, we’ve been working on short stories, developing a lot of 
fun new ideas for dispatching people (literarily speaking, though I think about 
practical applications occasionally when someone tailgates me).

Writing mysteries is a lot more fun than the other type of writing I’ve been 
doing. Recently, I have seen a large-ish uptick in customers reverse 
engineering our code to attempt to find security vulnerabilities in it. 
\<Insert big sigh here.\> This is why I’ve been writing a lot of letters to 
customers that start with "hi, howzit, aloha" but end with "please comply with 
your license agreement and stop reverse engineering our code, already."

I can understand that in a world where it seems almost every day someone else 
had a data breach and lost umpteen gazillion records to unnamed intruders who 
may have been working at the behest of a hostile nation-state, people want to 
go the extra mile to secure their systems. That said, you would think that 
before gearing up to run that extra mile, customers would already have ensured 
they’ve identified their critical systems, encrypted sensitive data, applied 
all relevant patches, be on a supported product release, use tools to ensure 
configurations are locked down – in short, the usual security hygiene – before 
they attempt to find zero day vulnerabilities in the products they are using. 
And in fact, there are a lot of data breaches that would be prevented by doing 
all that stuff, as unsexy as it is, instead of hyperventilating that the Big 
Bad Advanced Persistent Threat using a zero-day is out to get me! Whether you 
are running your own IT show or a cloud provider is running it for you, there 
are a host of good security practices that are well worth doing.

Even if you want to have reasonable certainty that suppliers take reasonable 
care in how they build their products – and there is so much more to assurance 
than running a scanning tool - there are a lot of things a customer can do 
like, gosh, actually talking to suppliers about their assurance programs or 
checking certifications for products for which there are Good Housekeeping 
seals for (or "good code" seals) like Common Criteria certifications or 
FIPS-140 certifications. Most vendors – at least, most of the large-ish ones 
I know – have fairly robust assurance programs now (we know this because we all 
compare notes at conferences). That’s all well and good, is appropriate 
customer due diligence and stops well short of "hey, I think I will do the 
vendor’s job for him/her/it and look for problems in source code myself," even 
though:

- A customer can’t analyze the code to see whether there is a control that 
prevents the attack the scanning tool is screaming about (which is most likely 
a false positive)
- A customer can’t produce a patch for the problem – only the vendor can do that
- A customer is almost certainly violating the license agreement by using 
a tool that does static analysis (which operates against source code)

I should state at the outset that in some cases I think the customers doing 
reverse engineering are not always aware of what is happening because the 
actual work is being done by a consultant, who runs a tool that reverse 
engineers the code, gets a big fat printout, drops it on the customer, who then 
sends it to us. Now, I should note that we don’t just accept scan reports as 
"proof that there is a there, there," in part because whether you are talking 
static or dynamic analysis, a scan report is not proof of an actual 
vulnerability. Often, they are not much more than a pile of steaming … FUD. 
(That is what I planned on saying all along: FUD.) This is why we require 
customers to log a service request for each alleged issue (not just hand us 
a report) and provide a proof of concept (which some tools can generate).

If we determine as part of our analysis that scan results could only have come 
from reverse engineering (in at least one case, because the report said, 
cleverly enough, "static analysis of Oracle XXXXXX"), we send a letter to the 
sinning customer, and a different letter to the sinning 
consultant-acting-on-customer’s behalf – reminding them of the terms of the 
Oracle license agreement that preclude reverse engineering, So Please Stop It 
Already. (In legalese, of course. The Oracle license agreement has a provision 
such as: "Customer may not reverse engineer, disassemble, decompile, or 
otherwise attempt to derive the source code of the Programs..." which we quote 
in our missive to the customer.) Oh, and we require customers/consultants to 
destroy the results of such reverse engineering and confirm they have done so.

Why am I bringing this up? The main reason is that, when I see a spike in X, 
I try to get ahead of it. I don’t want more rounds of "you broke the license 
agreement," "no, we didn’t," yes, you did," "no, we didn’t." I’d rather spend 
my time, and my team’s time, working on helping development improve our code 
than argue with people about where the license agreement lines are.

Now is a good time to reiterate that I’m not beating people up over this merely 
because of the license agreement. More like, "I do not need you to analyze the 
code since we already do that, it’s our job to do that, we are pretty good at 
it, we can – unlike a third party or a tool – actually analyze the code to 
determine what’s happening and at any rate most of these tools have a close to 
100% false positive rate so please do not waste our time on reporting little 
green men in our code." I am not running away from our responsibilities to 
customers, merely trying to avoid a painful, annoying, and mutually-time 
wasting exercise.

For this reason, I want to explain what Oracle’s purpose is in enforcing our 
license agreement (as it pertains to reverse engineering) and, in a reasonably 
precise yet hand-wavy way, explain "where the line is you can’t cross or you 
will get a strongly-worded letter from us." Caveat: I am not a lawyer, even if 
I can use words like stare decisis in random conversations. (Except with my 
dog, because he only understands Hawaiian, not Latin.) Ergo, when in doubt, 
refer to your Oracle license agreement, which trumps anything I say herein!

With that in mind, a few FAQ-ish explanations:

Q. What is reverse engineering?

A. Generally, our code is shipped in compiled (executable) form (yes, I know 
that some code is interpreted). Customers get code that runs, not the code "as 
written." That is for multiple reasons such as users generally only need to run 
code, not understand how it all gets put together, and the fact that our source 
code is highly valuable intellectual property (which is why we have a lot of 
restrictions on who accesses it and protections around it). The Oracle license 
agreement limits what you can do with the as-shipped code and that limitation 
includes the fact that you aren’t allowed to de-compile, dis-assemble, 
de-obfuscate or otherwise try to get source code back from executable code. 
There are a few caveats around that prohibition but there isn’t an "out" for 
"unless you are looking for security vulnerabilities in which case, no 
problem-o, mon!"

If you are trying to get the code in a different form from the way we shipped 
it to you – as in, the way we wrote it before we did something to it to get it 
in the form you are executing, you are probably reverse engineering. Don’t. 
Just – don’t.

Q. What is Oracle’s policy in regards to the submission of security 
vulnerabilities (found by tools or not)?

A. We require customers to open a service request (one per vulnerability) and 
provide a test case to verify that the alleged vulnerability is exploitable. 
The purpose of this policy is to try to weed out the very large number of 
inaccurate findings by security tools (false positives).

Q. Why are you going after consultants the customer hired? The consultant 
didn’t sign the license agreement!

A. The customer signed the Oracle license agreement, and the consultant hired 
by the customer is thus bound by the customer’s signed license agreement. 
Otherwise everyone would hire a consultant to say (legal terms follow) "Nanny, 
nanny boo boo, big bad consultant can do X even if the customer can’t!"

Q. What does Oracle do if there is an actual security vulnerability?

A. I almost hate to answer this question because I want to reiterate that 
customers Should Not and Must Not reverse engineer our code. However, if there 
is an actual security vulnerability, we will fix it. We may not like how it was 
found but we aren’t going to ignore a real problem – that would be a disservice 
to our customers. We will, however, fix it to protect all our customers, 
meaning everybody will get the fix at the same time. However, we will not give 
a customer reporting such an issue (that they found through reverse 
engineering) a special (one-off) patch for the problem. We will also not 
provide credit in any advisories we might issue. You can’t really expect us to 
say "thank you for breaking the license agreement."

Q. But the tools that decompile products are getting better and easier to use, 
so reverse engineering will be OK in the future, right?

A. Ah, no. The point of our prohibition against reverse engineering is 
intellectual property protection, not "how can we cleverly prevent customers 
from finding security vulnerabilities – bwahahahaha – so we never have to fix 
them – bwahahahaha." Customers are welcome to use tools that operate on 
executable code but that do not reverse engineer code. To that point, customers 
using a third party tool or service offering would be well-served by asking 
questions of the tool (or tool service) provider as to a) how their tool works 
and b) whether they perform reverse engineering to "do what they do." An ounce 
of discussion is worth a pound of "no we didn’t," "yes you did," "didn’t," 
"did" arguments. \*

Q. "But I hired a really cool code consultant/third party code 
scanner/whatever. Why won’t mean old Oracle accept my scan results and analyze 
all 400 pages of the scan report?"

A. Hoo-boy. I think I have repeated this so much it should be a song chorus in 
a really annoying hip hop piece but here goes: Oracle runs static analysis 
tools ourselves (heck, we make them), many of these goldurn tools are 
ridiculously inaccurate (sometimes the false positive rate is 100% or close to 
it), running a tool is nothing, the ability to analyze results is everything, 
and so on and so forth. We put the burden on customers or their consultants to 
prove there is a There, There because otherwise, we waste a boatload of time 
analyzing – nothing\*\* – when we could be spending those resources, say, 
fixing actual security vulnerabilities.

Q. But one of the issues I found was an actual security vulnerability so that 
justifies reverse engineering, right?

A. Sigh. At the risk of being repetitive, no, it doesn’t, just like you can’t 
break into a house because someone left a window or door unlocked. I’d like to 
tell you that we run every tool ever developed against every line of code we 
ever wrote, but that’s not true. We do require development teams (on premises, 
cloud and internal development organizations) to use security 
vulnerability-finding tools, we’ve had a significant uptick in tools usage over 
the last few years (our metrics show this) and we do track tools usage as part 
of Oracle Software Security Assurance program. We beat up – I mean, "require" 
– development teams to use tools because it is very much in our interests (and 
customers’ interests) to find and fix problems earlier rather than later.

That said, no tool finds everything. No two tools find everything. We don’t 
claim to find everything. That fact still doesn’t justify a customer reverse 
engineering our code to attempt to find vulnerabilities, especially when the 
key to whether a suspected vulnerability is an actual vulnerability is the 
capability to analyze the actual source code, which – frankly – hardly any 
third party will be able to do, another reason not to accept random scan 
reports that resulted from reverse engineering at face value, as if we needed 
one.

Q. Hey, I’ve got an idea, why not do a bug bounty? Pay third parties to find 
this stuff!

A. \<Bigger sigh.\> Bug bounties are the new boy band (nicely alliterative, 
no?) Many companies are screaming, fainting, and throwing underwear at security 
researchers**** to find problems in their code and insisting that This Is The 
Way, Walk In It: if you are not doing bug bounties, your code isn’t secure. Ah, 
well, we find 87% of security vulnerabilities ourselves, security researchers 
find about 3% and the rest are found by customers. (Small digression: I was 
busting my buttons today when I found out that a well-known security researcher 
in a particular area of technology reported a bunch of alleged security issues 
to us except – we had already found all of them and we were already working on 
or had fixes. Woo hoo!)

I am not dissing bug bounties, just noting that on a strictly economic basis, 
why would I throw a lot of money at 3% of the problem (and without learning 
lessons from what you find, it really is "whack a code mole") when I could 
spend that money on better prevention like, oh, hiring another employee to do 
ethical hacking, who could develop a really good tool we use to automate 
finding certain types of issues, and so on. This is one of those "full 
immersion baptism" or "sprinkle water over the forehead" issues – we will allow 
for different religious traditions and do it OUR way – and others can do it 
THEIR way. Pax vobiscum.

Q. If you don’t let customers reverse engineer code, they won’t buy anything 
else from you.

A. I actually heard this from a customer. It was ironic because in order for 
them to buy more products from us (or use a cloud service offering), they’d 
have to sign – a license agreement! With the same terms that the customer had 
already admitted violating. "Honey, if you won’t let me cheat on you again, our 
marriage is through." "Ah, er, you already violated the ‘forsaking all others’ 
part of the marriage vow so I think the marriage is already over."

The better discussion to have with a customer —and I always offer this — is for 
us to explain what we do to build assurance into our products, including how we 
use vulnerability finding tools. I want customers to have confidence in our 
products and services, not just drop a letter on them.

Q. Surely the bad guys and some nations do reverse engineer Oracle’s code and 
don’t care about your licensing agreement, so why would you try to restrict the 
behavior of customers with good motives?

A. Oracle’s license agreement exists to protect our intellectual property. 
"Good motives" – and given the errata of third party attempts to scan code the 
quotation marks are quite apropos – are not an acceptable excuse for violating 
an agreement willingly entered into. Any more than "but everybody else is 
cheating on his or her spouse" is an acceptable excuse for violating "forsaking 
all others" if you said it in front of witnesses.

At this point, I think I am beating a dead – or should I say, decompiled 
– horse. We ask that customers not reverse engineer our code to find suspected 
security issues: we have source code, we run tools against the source code (as 
well as against executable code), it’s actually our job to do that, we don’t 
need or want a customer or random third party to reverse engineer our code to 
find security vulnerabilities. And last, but really first, the Oracle license 
agreement prohibits it. Please don’t go there.

\* I suspect at least part of the anger of customers in these back-and-forth 
discussions is because the customer had already paid a security consultant to 
do the work. They are angry with us for having been sold a bill of goods by 
their consultant (where the consultant broke the license agreement).

\*\* The only analogy I can come up with is – my bookshelf. Someone convinced 
that I had a prurient interest in pornography could look at the titles on my 
bookshelf, conclude they are salacious, and demand an explanation from me as to 
why I have a collection of steamy books. For example (these are all real titles 
on my shelf):

- Thunder Below! ("whoo boy, must be hot stuff!")
- Naked Economics ("nude Keynesians!")\*\*\*
- Inferno ("even hotter stuff!")
- At Dawn We Slept ("you must be exhausted from your, ah, nighttime 
activities…")

My response is that I don’t have to explain my book tastes or respond to 
baseless FUD. (If anybody is interested, the actual book subjects are, in 
order, 1) the exploits of WWII submarine skipper and Congressional Medal of 
Honor recipient CAPT Eugene Fluckey, USN 2) a book on economics 3) a book about 
the European theater in WWII and 4) the definitive work concerning the attack 
on Pearl Harbor.)

\*\*\* Absolutely not, I loathe Keynes. There are more extant dodos than actual 
Keynesian multipliers. Although "dodos" and "true believers in Keynesian 
multipliers" are interchangeable terms as far as I am concerned.

\*\*\*\* I might be exaggerating here. But maybe not.

By User701213-Oracle on Aug 10, 2015
