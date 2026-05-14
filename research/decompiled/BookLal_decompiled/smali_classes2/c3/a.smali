.class public final Lc3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static f:Lc3/o;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/util/ArrayList;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x63

    iput v0, p0, Lc3/a;->e:I

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc3/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lc3/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lc3/a;->c:Ljava/lang/String;

    iput v0, p0, Lc3/a;->e:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed to execute toLowerCase(Locale.ROOT).contains(query) for query:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CCPCountry"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method public static b(Landroid/content/Context;Lc3/o;Ljava/util/ArrayList;I)Lc3/a;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lc3/a;->c(Landroid/content/Context;Lc3/o;Ljava/util/ArrayList;Ljava/lang/String;)Lc3/a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lc3/o;Ljava/util/ArrayList;Ljava/lang/String;)Lc3/a;
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/a;

    iget-object v1, v0, Lc3/a;->b:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lc3/a;->j(Landroid/content/Context;Lc3/o;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc3/a;

    iget-object p2, p1, Lc3/a;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lc3/a;
    .locals 3

    invoke-static {}, Lc3/a;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc3/a;

    iget-object v2, v1, Lc3/a;->b:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lc3/a;
    .locals 3

    invoke-static {}, Lc3/a;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc3/a;

    iget-object v2, v1, Lc3/a;->a:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Lc3/o;Ljava/lang/String;)Lc3/a;
    .locals 1

    invoke-static {p0, p1}, Lc3/a;->j(Landroid/content/Context;Lc3/o;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc3/a;

    iget-object v0, p1, Lc3/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Lc3/a;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lc3/a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "zw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xf9

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "zm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xf8

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "za"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xf7

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "yt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0xf6

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "ye"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0xf5

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "xk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0xf4

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "ws"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0xf3

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "wf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0xf2

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "vu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0xf1

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "vn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0xf0

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "vi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0xef

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "vg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0xee

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "ve"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0xed

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "vc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0xec

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "va"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0xeb

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "uz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0xea

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "uy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0xe9

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "us"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0xe8

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "um"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0xe7

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "ug"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0xe6

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "ua"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0xe5

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "tz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0xe4

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "tw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0xe3

    goto/16 :goto_0

    :sswitch_17
    const-string v1, "tv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0xe2

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "tt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0xe1

    goto/16 :goto_0

    :sswitch_19
    const-string v1, "tr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0xe0

    goto/16 :goto_0

    :sswitch_1a
    const-string v1, "to"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v0, 0xdf

    goto/16 :goto_0

    :sswitch_1b
    const-string v1, "tn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v0, 0xde

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "tm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v0, 0xdd

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "tl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v0, 0xdc

    goto/16 :goto_0

    :sswitch_1e
    const-string v1, "tk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v0, 0xdb

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "tj"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v0, 0xda

    goto/16 :goto_0

    :sswitch_20
    const-string v1, "th"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v0, 0xd9

    goto/16 :goto_0

    :sswitch_21
    const-string v1, "tg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v0, 0xd8

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "tf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v0, 0xd7

    goto/16 :goto_0

    :sswitch_23
    const-string v1, "td"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v0, 0xd6

    goto/16 :goto_0

    :sswitch_24
    const-string v1, "tc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v0, 0xd5

    goto/16 :goto_0

    :sswitch_25
    const-string v1, "sz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v0, 0xd4

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "sy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v0, 0xd3

    goto/16 :goto_0

    :sswitch_27
    const-string v1, "sx"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v0, 0xd2

    goto/16 :goto_0

    :sswitch_28
    const-string v1, "sv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v0, 0xd1

    goto/16 :goto_0

    :sswitch_29
    const-string v1, "st"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v0, 0xd0

    goto/16 :goto_0

    :sswitch_2a
    const-string v1, "ss"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v0, 0xcf

    goto/16 :goto_0

    :sswitch_2b
    const-string v1, "sr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v0, 0xce

    goto/16 :goto_0

    :sswitch_2c
    const-string v1, "so"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v0, 0xcd

    goto/16 :goto_0

    :sswitch_2d
    const-string v1, "sn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v0, 0xcc

    goto/16 :goto_0

    :sswitch_2e
    const-string v1, "sm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v0, 0xcb

    goto/16 :goto_0

    :sswitch_2f
    const-string v1, "sl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v0, 0xca

    goto/16 :goto_0

    :sswitch_30
    const-string v1, "sk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v0, 0xc9

    goto/16 :goto_0

    :sswitch_31
    const-string v1, "sj"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v0, 0xc8

    goto/16 :goto_0

    :sswitch_32
    const-string v1, "si"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v0, 0xc7

    goto/16 :goto_0

    :sswitch_33
    const-string v1, "sh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v0, 0xc6

    goto/16 :goto_0

    :sswitch_34
    const-string v1, "sg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v0, 0xc5

    goto/16 :goto_0

    :sswitch_35
    const-string v1, "se"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v0, 0xc4

    goto/16 :goto_0

    :sswitch_36
    const-string v1, "sd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v0, 0xc3

    goto/16 :goto_0

    :sswitch_37
    const-string v1, "sc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v0, 0xc2

    goto/16 :goto_0

    :sswitch_38
    const-string v1, "sb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v0, 0xc1

    goto/16 :goto_0

    :sswitch_39
    const-string v1, "sa"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v0, 0xc0

    goto/16 :goto_0

    :sswitch_3a
    const-string v1, "rw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v0, 0xbf

    goto/16 :goto_0

    :sswitch_3b
    const-string v1, "ru"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v0, 0xbe

    goto/16 :goto_0

    :sswitch_3c
    const-string v1, "rs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v0, 0xbd

    goto/16 :goto_0

    :sswitch_3d
    const-string v1, "ro"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v0, 0xbc

    goto/16 :goto_0

    :sswitch_3e
    const-string v1, "re"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v0, 0xbb

    goto/16 :goto_0

    :sswitch_3f
    const-string v1, "qa"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v0, 0xba

    goto/16 :goto_0

    :sswitch_40
    const-string v1, "py"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v0, 0xb9

    goto/16 :goto_0

    :sswitch_41
    const-string v1, "pw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v0, 0xb8

    goto/16 :goto_0

    :sswitch_42
    const-string v1, "pt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v0, 0xb7

    goto/16 :goto_0

    :sswitch_43
    const-string v1, "ps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v0, 0xb6

    goto/16 :goto_0

    :sswitch_44
    const-string v1, "pr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v0, 0xb5

    goto/16 :goto_0

    :sswitch_45
    const-string v1, "pn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v0, 0xb4

    goto/16 :goto_0

    :sswitch_46
    const-string v1, "pm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v0, 0xb3

    goto/16 :goto_0

    :sswitch_47
    const-string v1, "pl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v0, 0xb2

    goto/16 :goto_0

    :sswitch_48
    const-string v1, "pk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v0, 0xb1

    goto/16 :goto_0

    :sswitch_49
    const-string v1, "ph"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v0, 0xb0

    goto/16 :goto_0

    :sswitch_4a
    const-string v1, "pg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v0, 0xaf

    goto/16 :goto_0

    :sswitch_4b
    const-string v1, "pf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v0, 0xae

    goto/16 :goto_0

    :sswitch_4c
    const-string v1, "pe"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v0, 0xad

    goto/16 :goto_0

    :sswitch_4d
    const-string v1, "pa"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v0, 0xac

    goto/16 :goto_0

    :sswitch_4e
    const-string v1, "om"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto/16 :goto_0

    :cond_4e
    const/16 v0, 0xab

    goto/16 :goto_0

    :sswitch_4f
    const-string v1, "nz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const/16 v0, 0xaa

    goto/16 :goto_0

    :sswitch_50
    const-string v1, "nu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    goto/16 :goto_0

    :cond_50
    const/16 v0, 0xa9

    goto/16 :goto_0

    :sswitch_51
    const-string v1, "nr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    goto/16 :goto_0

    :cond_51
    const/16 v0, 0xa8

    goto/16 :goto_0

    :sswitch_52
    const-string v1, "np"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    goto/16 :goto_0

    :cond_52
    const/16 v0, 0xa7

    goto/16 :goto_0

    :sswitch_53
    const-string v1, "no"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_53

    goto/16 :goto_0

    :cond_53
    const/16 v0, 0xa6

    goto/16 :goto_0

    :sswitch_54
    const-string v1, "nl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    goto/16 :goto_0

    :cond_54
    const/16 v0, 0xa5

    goto/16 :goto_0

    :sswitch_55
    const-string v1, "ni"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_55

    goto/16 :goto_0

    :cond_55
    const/16 v0, 0xa4

    goto/16 :goto_0

    :sswitch_56
    const-string v1, "ng"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_56

    goto/16 :goto_0

    :cond_56
    const/16 v0, 0xa3

    goto/16 :goto_0

    :sswitch_57
    const-string v1, "nf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57

    goto/16 :goto_0

    :cond_57
    const/16 v0, 0xa2

    goto/16 :goto_0

    :sswitch_58
    const-string v1, "ne"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    goto/16 :goto_0

    :cond_58
    const/16 v0, 0xa1

    goto/16 :goto_0

    :sswitch_59
    const-string v1, "nc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto/16 :goto_0

    :cond_59
    const/16 v0, 0xa0

    goto/16 :goto_0

    :sswitch_5a
    const-string v1, "na"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5a

    goto/16 :goto_0

    :cond_5a
    const/16 v0, 0x9f

    goto/16 :goto_0

    :sswitch_5b
    const-string v1, "mz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    goto/16 :goto_0

    :cond_5b
    const/16 v0, 0x9e

    goto/16 :goto_0

    :sswitch_5c
    const-string v1, "my"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5c

    goto/16 :goto_0

    :cond_5c
    const/16 v0, 0x9d

    goto/16 :goto_0

    :sswitch_5d
    const-string v1, "mx"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    goto/16 :goto_0

    :cond_5d
    const/16 v0, 0x9c

    goto/16 :goto_0

    :sswitch_5e
    const-string v1, "mw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5e

    goto/16 :goto_0

    :cond_5e
    const/16 v0, 0x9b

    goto/16 :goto_0

    :sswitch_5f
    const-string v1, "mv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    goto/16 :goto_0

    :cond_5f
    const/16 v0, 0x9a

    goto/16 :goto_0

    :sswitch_60
    const-string v1, "mu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    goto/16 :goto_0

    :cond_60
    const/16 v0, 0x99

    goto/16 :goto_0

    :sswitch_61
    const-string v1, "mt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_61

    goto/16 :goto_0

    :cond_61
    const/16 v0, 0x98

    goto/16 :goto_0

    :sswitch_62
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_62

    goto/16 :goto_0

    :cond_62
    const/16 v0, 0x97

    goto/16 :goto_0

    :sswitch_63
    const-string v1, "mr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_63

    goto/16 :goto_0

    :cond_63
    const/16 v0, 0x96

    goto/16 :goto_0

    :sswitch_64
    const-string v1, "mq"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_64

    goto/16 :goto_0

    :cond_64
    const/16 v0, 0x95

    goto/16 :goto_0

    :sswitch_65
    const-string v1, "mp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_65

    goto/16 :goto_0

    :cond_65
    const/16 v0, 0x94

    goto/16 :goto_0

    :sswitch_66
    const-string v1, "mo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    goto/16 :goto_0

    :cond_66
    const/16 v0, 0x93

    goto/16 :goto_0

    :sswitch_67
    const-string v1, "mn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_67

    goto/16 :goto_0

    :cond_67
    const/16 v0, 0x92

    goto/16 :goto_0

    :sswitch_68
    const-string v1, "mm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_68

    goto/16 :goto_0

    :cond_68
    const/16 v0, 0x91

    goto/16 :goto_0

    :sswitch_69
    const-string v1, "ml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_69

    goto/16 :goto_0

    :cond_69
    const/16 v0, 0x90

    goto/16 :goto_0

    :sswitch_6a
    const-string v1, "mk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a

    goto/16 :goto_0

    :cond_6a
    const/16 v0, 0x8f

    goto/16 :goto_0

    :sswitch_6b
    const-string v1, "mh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b

    goto/16 :goto_0

    :cond_6b
    const/16 v0, 0x8e

    goto/16 :goto_0

    :sswitch_6c
    const-string v1, "mg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6c

    goto/16 :goto_0

    :cond_6c
    const/16 v0, 0x8d

    goto/16 :goto_0

    :sswitch_6d
    const-string v1, "mf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6d

    goto/16 :goto_0

    :cond_6d
    const/16 v0, 0x8c

    goto/16 :goto_0

    :sswitch_6e
    const-string v1, "me"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6e

    goto/16 :goto_0

    :cond_6e
    const/16 v0, 0x8b

    goto/16 :goto_0

    :sswitch_6f
    const-string v1, "md"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6f

    goto/16 :goto_0

    :cond_6f
    const/16 v0, 0x8a

    goto/16 :goto_0

    :sswitch_70
    const-string v1, "mc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_70

    goto/16 :goto_0

    :cond_70
    const/16 v0, 0x89

    goto/16 :goto_0

    :sswitch_71
    const-string v1, "ma"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_71

    goto/16 :goto_0

    :cond_71
    const/16 v0, 0x88

    goto/16 :goto_0

    :sswitch_72
    const-string v1, "ly"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_72

    goto/16 :goto_0

    :cond_72
    const/16 v0, 0x87

    goto/16 :goto_0

    :sswitch_73
    const-string v1, "lv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_73

    goto/16 :goto_0

    :cond_73
    const/16 v0, 0x86

    goto/16 :goto_0

    :sswitch_74
    const-string v1, "lu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_74

    goto/16 :goto_0

    :cond_74
    const/16 v0, 0x85

    goto/16 :goto_0

    :sswitch_75
    const-string v1, "lt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_75

    goto/16 :goto_0

    :cond_75
    const/16 v0, 0x84

    goto/16 :goto_0

    :sswitch_76
    const-string v1, "ls"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_76

    goto/16 :goto_0

    :cond_76
    const/16 v0, 0x83

    goto/16 :goto_0

    :sswitch_77
    const-string v1, "lr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_77

    goto/16 :goto_0

    :cond_77
    const/16 v0, 0x82

    goto/16 :goto_0

    :sswitch_78
    const-string v1, "lk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    goto/16 :goto_0

    :cond_78
    const/16 v0, 0x81

    goto/16 :goto_0

    :sswitch_79
    const-string v1, "li"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_79

    goto/16 :goto_0

    :cond_79
    const/16 v0, 0x80

    goto/16 :goto_0

    :sswitch_7a
    const-string v1, "lc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7a

    goto/16 :goto_0

    :cond_7a
    const/16 v0, 0x7f

    goto/16 :goto_0

    :sswitch_7b
    const-string v1, "lb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7b

    goto/16 :goto_0

    :cond_7b
    const/16 v0, 0x7e

    goto/16 :goto_0

    :sswitch_7c
    const-string v1, "la"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7c

    goto/16 :goto_0

    :cond_7c
    const/16 v0, 0x7d

    goto/16 :goto_0

    :sswitch_7d
    const-string v1, "kz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7d

    goto/16 :goto_0

    :cond_7d
    const/16 v0, 0x7c

    goto/16 :goto_0

    :sswitch_7e
    const-string v1, "ky"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7e

    goto/16 :goto_0

    :cond_7e
    const/16 v0, 0x7b

    goto/16 :goto_0

    :sswitch_7f
    const-string v1, "kw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7f

    goto/16 :goto_0

    :cond_7f
    const/16 v0, 0x7a

    goto/16 :goto_0

    :sswitch_80
    const-string v1, "kr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_80

    goto/16 :goto_0

    :cond_80
    const/16 v0, 0x79

    goto/16 :goto_0

    :sswitch_81
    const-string v1, "kp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_81

    goto/16 :goto_0

    :cond_81
    const/16 v0, 0x78

    goto/16 :goto_0

    :sswitch_82
    const-string v1, "kn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_82

    goto/16 :goto_0

    :cond_82
    const/16 v0, 0x77

    goto/16 :goto_0

    :sswitch_83
    const-string v1, "km"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_83

    goto/16 :goto_0

    :cond_83
    const/16 v0, 0x76

    goto/16 :goto_0

    :sswitch_84
    const-string v1, "ki"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_84

    goto/16 :goto_0

    :cond_84
    const/16 v0, 0x75

    goto/16 :goto_0

    :sswitch_85
    const-string v1, "kh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_85

    goto/16 :goto_0

    :cond_85
    const/16 v0, 0x74

    goto/16 :goto_0

    :sswitch_86
    const-string v1, "kg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_86

    goto/16 :goto_0

    :cond_86
    const/16 v0, 0x73

    goto/16 :goto_0

    :sswitch_87
    const-string v1, "ke"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_87

    goto/16 :goto_0

    :cond_87
    const/16 v0, 0x72

    goto/16 :goto_0

    :sswitch_88
    const-string v1, "jp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_88

    goto/16 :goto_0

    :cond_88
    const/16 v0, 0x71

    goto/16 :goto_0

    :sswitch_89
    const-string v1, "jo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_89

    goto/16 :goto_0

    :cond_89
    const/16 v0, 0x70

    goto/16 :goto_0

    :sswitch_8a
    const-string v1, "jm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8a

    goto/16 :goto_0

    :cond_8a
    const/16 v0, 0x6f

    goto/16 :goto_0

    :sswitch_8b
    const-string v1, "je"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    goto/16 :goto_0

    :cond_8b
    const/16 v0, 0x6e

    goto/16 :goto_0

    :sswitch_8c
    const-string v1, "it"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8c

    goto/16 :goto_0

    :cond_8c
    const/16 v0, 0x6d

    goto/16 :goto_0

    :sswitch_8d
    const-string v1, "is"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8d

    goto/16 :goto_0

    :cond_8d
    const/16 v0, 0x6c

    goto/16 :goto_0

    :sswitch_8e
    const-string v1, "ir"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8e

    goto/16 :goto_0

    :cond_8e
    const/16 v0, 0x6b

    goto/16 :goto_0

    :sswitch_8f
    const-string v1, "iq"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8f

    goto/16 :goto_0

    :cond_8f
    const/16 v0, 0x6a

    goto/16 :goto_0

    :sswitch_90
    const-string v1, "io"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_90

    goto/16 :goto_0

    :cond_90
    const/16 v0, 0x69

    goto/16 :goto_0

    :sswitch_91
    const-string v1, "in"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_91

    goto/16 :goto_0

    :cond_91
    const/16 v0, 0x68

    goto/16 :goto_0

    :sswitch_92
    const-string v1, "im"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_92

    goto/16 :goto_0

    :cond_92
    const/16 v0, 0x67

    goto/16 :goto_0

    :sswitch_93
    const-string v1, "il"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_93

    goto/16 :goto_0

    :cond_93
    const/16 v0, 0x66

    goto/16 :goto_0

    :sswitch_94
    const-string v1, "ie"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_94

    goto/16 :goto_0

    :cond_94
    const/16 v0, 0x65

    goto/16 :goto_0

    :sswitch_95
    const-string v1, "id"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_95

    goto/16 :goto_0

    :cond_95
    const/16 v0, 0x64

    goto/16 :goto_0

    :sswitch_96
    const-string v1, "hu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_96

    goto/16 :goto_0

    :cond_96
    const/16 v0, 0x63

    goto/16 :goto_0

    :sswitch_97
    const-string v1, "ht"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_97

    goto/16 :goto_0

    :cond_97
    const/16 v0, 0x62

    goto/16 :goto_0

    :sswitch_98
    const-string v1, "hr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_98

    goto/16 :goto_0

    :cond_98
    const/16 v0, 0x61

    goto/16 :goto_0

    :sswitch_99
    const-string v1, "hn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_99

    goto/16 :goto_0

    :cond_99
    const/16 v0, 0x60

    goto/16 :goto_0

    :sswitch_9a
    const-string v1, "hm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9a

    goto/16 :goto_0

    :cond_9a
    const/16 v0, 0x5f

    goto/16 :goto_0

    :sswitch_9b
    const-string v1, "hk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9b

    goto/16 :goto_0

    :cond_9b
    const/16 v0, 0x5e

    goto/16 :goto_0

    :sswitch_9c
    const-string v1, "gy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9c

    goto/16 :goto_0

    :cond_9c
    const/16 v0, 0x5d

    goto/16 :goto_0

    :sswitch_9d
    const-string v1, "gw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9d

    goto/16 :goto_0

    :cond_9d
    const/16 v0, 0x5c

    goto/16 :goto_0

    :sswitch_9e
    const-string v1, "gu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9e

    goto/16 :goto_0

    :cond_9e
    const/16 v0, 0x5b

    goto/16 :goto_0

    :sswitch_9f
    const-string v1, "gt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9f

    goto/16 :goto_0

    :cond_9f
    const/16 v0, 0x5a

    goto/16 :goto_0

    :sswitch_a0
    const-string v1, "gs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a0

    goto/16 :goto_0

    :cond_a0
    const/16 v0, 0x59

    goto/16 :goto_0

    :sswitch_a1
    const-string v1, "gr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a1

    goto/16 :goto_0

    :cond_a1
    const/16 v0, 0x58

    goto/16 :goto_0

    :sswitch_a2
    const-string v1, "gq"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a2

    goto/16 :goto_0

    :cond_a2
    const/16 v0, 0x57

    goto/16 :goto_0

    :sswitch_a3
    const-string v1, "gp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a3

    goto/16 :goto_0

    :cond_a3
    const/16 v0, 0x56

    goto/16 :goto_0

    :sswitch_a4
    const-string v1, "gn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a4

    goto/16 :goto_0

    :cond_a4
    const/16 v0, 0x55

    goto/16 :goto_0

    :sswitch_a5
    const-string v1, "gm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a5

    goto/16 :goto_0

    :cond_a5
    const/16 v0, 0x54

    goto/16 :goto_0

    :sswitch_a6
    const-string v1, "gl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a6

    goto/16 :goto_0

    :cond_a6
    const/16 v0, 0x53

    goto/16 :goto_0

    :sswitch_a7
    const-string v1, "gi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    goto/16 :goto_0

    :cond_a7
    const/16 v0, 0x52

    goto/16 :goto_0

    :sswitch_a8
    const-string v1, "gh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a8

    goto/16 :goto_0

    :cond_a8
    const/16 v0, 0x51

    goto/16 :goto_0

    :sswitch_a9
    const-string v1, "gg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a9

    goto/16 :goto_0

    :cond_a9
    const/16 v0, 0x50

    goto/16 :goto_0

    :sswitch_aa
    const-string v1, "gf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_aa

    goto/16 :goto_0

    :cond_aa
    const/16 v0, 0x4f

    goto/16 :goto_0

    :sswitch_ab
    const-string v1, "ge"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ab

    goto/16 :goto_0

    :cond_ab
    const/16 v0, 0x4e

    goto/16 :goto_0

    :sswitch_ac
    const-string v1, "gd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ac

    goto/16 :goto_0

    :cond_ac
    const/16 v0, 0x4d

    goto/16 :goto_0

    :sswitch_ad
    const-string v1, "gb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ad

    goto/16 :goto_0

    :cond_ad
    const/16 v0, 0x4c

    goto/16 :goto_0

    :sswitch_ae
    const-string v1, "ga"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ae

    goto/16 :goto_0

    :cond_ae
    const/16 v0, 0x4b

    goto/16 :goto_0

    :sswitch_af
    const-string v1, "fr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_af

    goto/16 :goto_0

    :cond_af
    const/16 v0, 0x4a

    goto/16 :goto_0

    :sswitch_b0
    const-string v1, "fo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b0

    goto/16 :goto_0

    :cond_b0
    const/16 v0, 0x49

    goto/16 :goto_0

    :sswitch_b1
    const-string v1, "fm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b1

    goto/16 :goto_0

    :cond_b1
    const/16 v0, 0x48

    goto/16 :goto_0

    :sswitch_b2
    const-string v1, "fk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    goto/16 :goto_0

    :cond_b2
    const/16 v0, 0x47

    goto/16 :goto_0

    :sswitch_b3
    const-string v1, "fj"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b3

    goto/16 :goto_0

    :cond_b3
    const/16 v0, 0x46

    goto/16 :goto_0

    :sswitch_b4
    const-string v1, "fi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b4

    goto/16 :goto_0

    :cond_b4
    const/16 v0, 0x45

    goto/16 :goto_0

    :sswitch_b5
    const-string v1, "et"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b5

    goto/16 :goto_0

    :cond_b5
    const/16 v0, 0x44

    goto/16 :goto_0

    :sswitch_b6
    const-string v1, "es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b6

    goto/16 :goto_0

    :cond_b6
    const/16 v0, 0x43

    goto/16 :goto_0

    :sswitch_b7
    const-string v1, "er"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b7

    goto/16 :goto_0

    :cond_b7
    const/16 v0, 0x42

    goto/16 :goto_0

    :sswitch_b8
    const-string v1, "eh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b8

    goto/16 :goto_0

    :cond_b8
    const/16 v0, 0x41

    goto/16 :goto_0

    :sswitch_b9
    const-string v1, "eg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b9

    goto/16 :goto_0

    :cond_b9
    const/16 v0, 0x40

    goto/16 :goto_0

    :sswitch_ba
    const-string v1, "ee"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ba

    goto/16 :goto_0

    :cond_ba
    const/16 v0, 0x3f

    goto/16 :goto_0

    :sswitch_bb
    const-string v1, "ec"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bb

    goto/16 :goto_0

    :cond_bb
    const/16 v0, 0x3e

    goto/16 :goto_0

    :sswitch_bc
    const-string v1, "dz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bc

    goto/16 :goto_0

    :cond_bc
    const/16 v0, 0x3d

    goto/16 :goto_0

    :sswitch_bd
    const-string v1, "do"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bd

    goto/16 :goto_0

    :cond_bd
    const/16 v0, 0x3c

    goto/16 :goto_0

    :sswitch_be
    const-string v1, "dm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_be

    goto/16 :goto_0

    :cond_be
    const/16 v0, 0x3b

    goto/16 :goto_0

    :sswitch_bf
    const-string v1, "dk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bf

    goto/16 :goto_0

    :cond_bf
    const/16 v0, 0x3a

    goto/16 :goto_0

    :sswitch_c0
    const-string v1, "dj"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c0

    goto/16 :goto_0

    :cond_c0
    const/16 v0, 0x39

    goto/16 :goto_0

    :sswitch_c1
    const-string v1, "de"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c1

    goto/16 :goto_0

    :cond_c1
    const/16 v0, 0x38

    goto/16 :goto_0

    :sswitch_c2
    const-string v1, "cz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c2

    goto/16 :goto_0

    :cond_c2
    const/16 v0, 0x37

    goto/16 :goto_0

    :sswitch_c3
    const-string v1, "cy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c3

    goto/16 :goto_0

    :cond_c3
    const/16 v0, 0x36

    goto/16 :goto_0

    :sswitch_c4
    const-string v1, "cx"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c4

    goto/16 :goto_0

    :cond_c4
    const/16 v0, 0x35

    goto/16 :goto_0

    :sswitch_c5
    const-string v1, "cw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c5

    goto/16 :goto_0

    :cond_c5
    const/16 v0, 0x34

    goto/16 :goto_0

    :sswitch_c6
    const-string v1, "cv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c6

    goto/16 :goto_0

    :cond_c6
    const/16 v0, 0x33

    goto/16 :goto_0

    :sswitch_c7
    const-string v1, "cu"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c7

    goto/16 :goto_0

    :cond_c7
    const/16 v0, 0x32

    goto/16 :goto_0

    :sswitch_c8
    const-string v1, "cr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c8

    goto/16 :goto_0

    :cond_c8
    const/16 v0, 0x31

    goto/16 :goto_0

    :sswitch_c9
    const-string v1, "co"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c9

    goto/16 :goto_0

    :cond_c9
    const/16 v0, 0x30

    goto/16 :goto_0

    :sswitch_ca
    const-string v1, "cn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ca

    goto/16 :goto_0

    :cond_ca
    const/16 v0, 0x2f

    goto/16 :goto_0

    :sswitch_cb
    const-string v1, "cm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cb

    goto/16 :goto_0

    :cond_cb
    const/16 v0, 0x2e

    goto/16 :goto_0

    :sswitch_cc
    const-string v1, "cl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cc

    goto/16 :goto_0

    :cond_cc
    const/16 v0, 0x2d

    goto/16 :goto_0

    :sswitch_cd
    const-string v1, "ck"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cd

    goto/16 :goto_0

    :cond_cd
    const/16 v0, 0x2c

    goto/16 :goto_0

    :sswitch_ce
    const-string v1, "ci"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ce

    goto/16 :goto_0

    :cond_ce
    const/16 v0, 0x2b

    goto/16 :goto_0

    :sswitch_cf
    const-string v1, "ch"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_cf

    goto/16 :goto_0

    :cond_cf
    const/16 v0, 0x2a

    goto/16 :goto_0

    :sswitch_d0
    const-string v1, "cg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d0

    goto/16 :goto_0

    :cond_d0
    const/16 v0, 0x29

    goto/16 :goto_0

    :sswitch_d1
    const-string v1, "cf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d1

    goto/16 :goto_0

    :cond_d1
    const/16 v0, 0x28

    goto/16 :goto_0

    :sswitch_d2
    const-string v1, "cd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d2

    goto/16 :goto_0

    :cond_d2
    const/16 v0, 0x27

    goto/16 :goto_0

    :sswitch_d3
    const-string v1, "cc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d3

    goto/16 :goto_0

    :cond_d3
    const/16 v0, 0x26

    goto/16 :goto_0

    :sswitch_d4
    const-string v1, "ca"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d4

    goto/16 :goto_0

    :cond_d4
    const/16 v0, 0x25

    goto/16 :goto_0

    :sswitch_d5
    const-string v1, "bz"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d5

    goto/16 :goto_0

    :cond_d5
    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_d6
    const-string v1, "by"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d6

    goto/16 :goto_0

    :cond_d6
    const/16 v0, 0x23

    goto/16 :goto_0

    :sswitch_d7
    const-string v1, "bw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d7

    goto/16 :goto_0

    :cond_d7
    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_d8
    const-string v1, "bv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d8

    goto/16 :goto_0

    :cond_d8
    const/16 v0, 0x21

    goto/16 :goto_0

    :sswitch_d9
    const-string v1, "bt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d9

    goto/16 :goto_0

    :cond_d9
    const/16 v0, 0x20

    goto/16 :goto_0

    :sswitch_da
    const-string v1, "bs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_da

    goto/16 :goto_0

    :cond_da
    const/16 v0, 0x1f

    goto/16 :goto_0

    :sswitch_db
    const-string v1, "br"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_db

    goto/16 :goto_0

    :cond_db
    const/16 v0, 0x1e

    goto/16 :goto_0

    :sswitch_dc
    const-string v1, "bq"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dc

    goto/16 :goto_0

    :cond_dc
    const/16 v0, 0x1d

    goto/16 :goto_0

    :sswitch_dd
    const-string v1, "bo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_dd

    goto/16 :goto_0

    :cond_dd
    const/16 v0, 0x1c

    goto/16 :goto_0

    :sswitch_de
    const-string v1, "bn"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_de

    goto/16 :goto_0

    :cond_de
    const/16 v0, 0x1b

    goto/16 :goto_0

    :sswitch_df
    const-string v1, "bm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_df

    goto/16 :goto_0

    :cond_df
    const/16 v0, 0x1a

    goto/16 :goto_0

    :sswitch_e0
    const-string v1, "bl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e0

    goto/16 :goto_0

    :cond_e0
    const/16 v0, 0x19

    goto/16 :goto_0

    :sswitch_e1
    const-string v1, "bj"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e1

    goto/16 :goto_0

    :cond_e1
    const/16 v0, 0x18

    goto/16 :goto_0

    :sswitch_e2
    const-string v1, "bi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e2

    goto/16 :goto_0

    :cond_e2
    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_e3
    const-string v1, "bh"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e3

    goto/16 :goto_0

    :cond_e3
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_e4
    const-string v1, "bg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e4

    goto/16 :goto_0

    :cond_e4
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_e5
    const-string v1, "bf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e5

    goto/16 :goto_0

    :cond_e5
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_e6
    const-string v1, "be"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e6

    goto/16 :goto_0

    :cond_e6
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_e7
    const-string v1, "bd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e7

    goto/16 :goto_0

    :cond_e7
    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_e8
    const-string v1, "bb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e8

    goto/16 :goto_0

    :cond_e8
    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_e9
    const-string v1, "ba"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e9

    goto/16 :goto_0

    :cond_e9
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_ea
    const-string v1, "az"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ea

    goto/16 :goto_0

    :cond_ea
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_eb
    const-string v1, "ax"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_eb

    goto/16 :goto_0

    :cond_eb
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_ec
    const-string v1, "aw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ec

    goto/16 :goto_0

    :cond_ec
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_ed
    const-string v1, "au"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ed

    goto/16 :goto_0

    :cond_ed
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_ee
    const-string v1, "at"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ee

    goto/16 :goto_0

    :cond_ee
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_ef
    const-string v1, "as"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ef

    goto/16 :goto_0

    :cond_ef
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_f0
    const-string v1, "ar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f0

    goto/16 :goto_0

    :cond_f0
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_f1
    const-string v1, "aq"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f1

    goto/16 :goto_0

    :cond_f1
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_f2
    const-string v1, "ao"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f2

    goto :goto_0

    :cond_f2
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_f3
    const-string v1, "am"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f3

    goto :goto_0

    :cond_f3
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_f4
    const-string v1, "al"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f4

    goto :goto_0

    :cond_f4
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_f5
    const-string v1, "ai"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f5

    goto :goto_0

    :cond_f5
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_f6
    const-string v1, "ag"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f6

    goto :goto_0

    :cond_f6
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_f7
    const-string v1, "af"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f7

    goto :goto_0

    :cond_f7
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_f8
    const-string v1, "ae"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f8

    goto :goto_0

    :cond_f8
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_f9
    const-string v1, "ad"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f9

    goto :goto_0

    :cond_f9
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p0, " "

    return-object p0

    :pswitch_0
    const-string p0, "\ud83c\uddff\ud83c\uddfc"

    return-object p0

    :pswitch_1
    const-string p0, "\ud83c\uddff\ud83c\uddf2"

    return-object p0

    :pswitch_2
    const-string p0, "\ud83c\uddff\ud83c\udde6"

    return-object p0

    :pswitch_3
    const-string p0, "\ud83c\uddfe\ud83c\uddf9"

    return-object p0

    :pswitch_4
    const-string p0, "\ud83c\uddfe\ud83c\uddea"

    return-object p0

    :pswitch_5
    const-string p0, "\ud83c\uddfd\ud83c\uddf0"

    return-object p0

    :pswitch_6
    const-string p0, "\ud83c\uddfc\ud83c\uddf8"

    return-object p0

    :pswitch_7
    const-string p0, "\ud83c\uddfc\ud83c\uddeb"

    return-object p0

    :pswitch_8
    const-string p0, "\ud83c\uddfb\ud83c\uddfa"

    return-object p0

    :pswitch_9
    const-string p0, "\ud83c\uddfb\ud83c\uddf3"

    return-object p0

    :pswitch_a
    const-string p0, "\ud83c\uddfb\ud83c\uddee"

    return-object p0

    :pswitch_b
    const-string p0, "\ud83c\uddfb\ud83c\uddec"

    return-object p0

    :pswitch_c
    const-string p0, "\ud83c\uddfb\ud83c\uddea"

    return-object p0

    :pswitch_d
    const-string p0, "\ud83c\uddfb\ud83c\udde8"

    return-object p0

    :pswitch_e
    const-string p0, "\ud83c\uddfb\ud83c\udde6"

    return-object p0

    :pswitch_f
    const-string p0, "\ud83c\uddfa\ud83c\uddff"

    return-object p0

    :pswitch_10
    const-string p0, "\ud83c\uddfa\ud83c\uddfe"

    return-object p0

    :pswitch_11
    const-string p0, "\ud83c\uddfa\ud83c\uddf8"

    return-object p0

    :pswitch_12
    const-string p0, "\ud83c\uddfa\ud83c\uddf2"

    return-object p0

    :pswitch_13
    const-string p0, "\ud83c\uddfa\ud83c\uddec"

    return-object p0

    :pswitch_14
    const-string p0, "\ud83c\uddfa\ud83c\udde6"

    return-object p0

    :pswitch_15
    const-string p0, "\ud83c\uddf9\ud83c\uddff"

    return-object p0

    :pswitch_16
    const-string p0, "\ud83c\uddf9\ud83c\uddfc"

    return-object p0

    :pswitch_17
    const-string p0, "\ud83c\uddf9\ud83c\uddfb"

    return-object p0

    :pswitch_18
    const-string p0, "\ud83c\uddf9\ud83c\uddf9"

    return-object p0

    :pswitch_19
    const-string p0, "\ud83c\uddf9\ud83c\uddf7"

    return-object p0

    :pswitch_1a
    const-string p0, "\ud83c\uddf9\ud83c\uddf4"

    return-object p0

    :pswitch_1b
    const-string p0, "\ud83c\uddf9\ud83c\uddf3"

    return-object p0

    :pswitch_1c
    const-string p0, "\ud83c\uddf9\ud83c\uddf2"

    return-object p0

    :pswitch_1d
    const-string p0, "\ud83c\uddf9\ud83c\uddf1"

    return-object p0

    :pswitch_1e
    const-string p0, "\ud83c\uddf9\ud83c\uddf0"

    return-object p0

    :pswitch_1f
    const-string p0, "\ud83c\uddf9\ud83c\uddef"

    return-object p0

    :pswitch_20
    const-string p0, "\ud83c\uddf9\ud83c\udded"

    return-object p0

    :pswitch_21
    const-string p0, "\ud83c\uddf9\ud83c\uddec"

    return-object p0

    :pswitch_22
    const-string p0, "\ud83c\uddf9\ud83c\uddeb"

    return-object p0

    :pswitch_23
    const-string p0, "\ud83c\uddf9\ud83c\udde9"

    return-object p0

    :pswitch_24
    const-string p0, "\ud83c\uddf9\ud83c\udde8"

    return-object p0

    :pswitch_25
    const-string p0, "\ud83c\uddf8\ud83c\uddff"

    return-object p0

    :pswitch_26
    const-string p0, "\ud83c\uddf8\ud83c\uddfe"

    return-object p0

    :pswitch_27
    const-string p0, "\ud83c\uddf8\ud83c\uddfd"

    return-object p0

    :pswitch_28
    const-string p0, "\ud83c\uddf8\ud83c\uddfb"

    return-object p0

    :pswitch_29
    const-string p0, "\ud83c\uddf8\ud83c\uddf9"

    return-object p0

    :pswitch_2a
    const-string p0, "\ud83c\uddf8\ud83c\uddf8"

    return-object p0

    :pswitch_2b
    const-string p0, "\ud83c\uddf8\ud83c\uddf7"

    return-object p0

    :pswitch_2c
    const-string p0, "\ud83c\uddf8\ud83c\uddf4"

    return-object p0

    :pswitch_2d
    const-string p0, "\ud83c\uddf8\ud83c\uddf3"

    return-object p0

    :pswitch_2e
    const-string p0, "\ud83c\uddf8\ud83c\uddf2"

    return-object p0

    :pswitch_2f
    const-string p0, "\ud83c\uddf8\ud83c\uddf1"

    return-object p0

    :pswitch_30
    const-string p0, "\ud83c\uddf8\ud83c\uddf0"

    return-object p0

    :pswitch_31
    const-string p0, "\ud83c\uddf8\ud83c\uddef"

    return-object p0

    :pswitch_32
    const-string p0, "\ud83c\uddf8\ud83c\uddee"

    return-object p0

    :pswitch_33
    const-string p0, "\ud83c\uddf8\ud83c\udded"

    return-object p0

    :pswitch_34
    const-string p0, "\ud83c\uddf8\ud83c\uddec"

    return-object p0

    :pswitch_35
    const-string p0, "\ud83c\uddf8\ud83c\uddea"

    return-object p0

    :pswitch_36
    const-string p0, "\ud83c\uddf8\ud83c\udde9"

    return-object p0

    :pswitch_37
    const-string p0, "\ud83c\uddf8\ud83c\udde8"

    return-object p0

    :pswitch_38
    const-string p0, "\ud83c\uddf8\ud83c\udde7"

    return-object p0

    :pswitch_39
    const-string p0, "\ud83c\uddf8\ud83c\udde6"

    return-object p0

    :pswitch_3a
    const-string p0, "\ud83c\uddf7\ud83c\uddfc"

    return-object p0

    :pswitch_3b
    const-string p0, "\ud83c\uddf7\ud83c\uddfa"

    return-object p0

    :pswitch_3c
    const-string p0, "\ud83c\uddf7\ud83c\uddf8"

    return-object p0

    :pswitch_3d
    const-string p0, "\ud83c\uddf7\ud83c\uddf4"

    return-object p0

    :pswitch_3e
    const-string p0, "\ud83c\uddf7\ud83c\uddea"

    return-object p0

    :pswitch_3f
    const-string p0, "\ud83c\uddf6\ud83c\udde6"

    return-object p0

    :pswitch_40
    const-string p0, "\ud83c\uddf5\ud83c\uddfe"

    return-object p0

    :pswitch_41
    const-string p0, "\ud83c\uddf5\ud83c\uddfc"

    return-object p0

    :pswitch_42
    const-string p0, "\ud83c\uddf5\ud83c\uddf9"

    return-object p0

    :pswitch_43
    const-string p0, "\ud83c\uddf5\ud83c\uddf8"

    return-object p0

    :pswitch_44
    const-string p0, "\ud83c\uddf5\ud83c\uddf7"

    return-object p0

    :pswitch_45
    const-string p0, "\ud83c\uddf5\ud83c\uddf3"

    return-object p0

    :pswitch_46
    const-string p0, "\ud83c\uddf5\ud83c\uddf2"

    return-object p0

    :pswitch_47
    const-string p0, "\ud83c\uddf5\ud83c\uddf1"

    return-object p0

    :pswitch_48
    const-string p0, "\ud83c\uddf5\ud83c\uddf0"

    return-object p0

    :pswitch_49
    const-string p0, "\ud83c\uddf5\ud83c\udded"

    return-object p0

    :pswitch_4a
    const-string p0, "\ud83c\uddf5\ud83c\uddec"

    return-object p0

    :pswitch_4b
    const-string p0, "\ud83c\uddf5\ud83c\uddeb"

    return-object p0

    :pswitch_4c
    const-string p0, "\ud83c\uddf5\ud83c\uddea"

    return-object p0

    :pswitch_4d
    const-string p0, "\ud83c\uddf5\ud83c\udde6"

    return-object p0

    :pswitch_4e
    const-string p0, "\ud83c\uddf4\ud83c\uddf2"

    return-object p0

    :pswitch_4f
    const-string p0, "\ud83c\uddf3\ud83c\uddff"

    return-object p0

    :pswitch_50
    const-string p0, "\ud83c\uddf3\ud83c\uddfa"

    return-object p0

    :pswitch_51
    const-string p0, "\ud83c\uddf3\ud83c\uddf7"

    return-object p0

    :pswitch_52
    const-string p0, "\ud83c\uddf3\ud83c\uddf5"

    return-object p0

    :pswitch_53
    const-string p0, "\ud83c\uddf3\ud83c\uddf4"

    return-object p0

    :pswitch_54
    const-string p0, "\ud83c\uddf3\ud83c\uddf1"

    return-object p0

    :pswitch_55
    const-string p0, "\ud83c\uddf3\ud83c\uddee"

    return-object p0

    :pswitch_56
    const-string p0, "\ud83c\uddf3\ud83c\uddec"

    return-object p0

    :pswitch_57
    const-string p0, "\ud83c\uddf3\ud83c\uddeb"

    return-object p0

    :pswitch_58
    const-string p0, "\ud83c\uddf3\ud83c\uddea"

    return-object p0

    :pswitch_59
    const-string p0, "\ud83c\uddf3\ud83c\udde8"

    return-object p0

    :pswitch_5a
    const-string p0, "\ud83c\uddf3\ud83c\udde6"

    return-object p0

    :pswitch_5b
    const-string p0, "\ud83c\uddf2\ud83c\uddff"

    return-object p0

    :pswitch_5c
    const-string p0, "\ud83c\uddf2\ud83c\uddfe"

    return-object p0

    :pswitch_5d
    const-string p0, "\ud83c\uddf2\ud83c\uddfd"

    return-object p0

    :pswitch_5e
    const-string p0, "\ud83c\uddf2\ud83c\uddfc"

    return-object p0

    :pswitch_5f
    const-string p0, "\ud83c\uddf2\ud83c\uddfb"

    return-object p0

    :pswitch_60
    const-string p0, "\ud83c\uddf2\ud83c\uddfa"

    return-object p0

    :pswitch_61
    const-string p0, "\ud83c\uddf2\ud83c\uddf9"

    return-object p0

    :pswitch_62
    const-string p0, "\ud83c\uddf2\ud83c\uddf8"

    return-object p0

    :pswitch_63
    const-string p0, "\ud83c\uddf2\ud83c\uddf7"

    return-object p0

    :pswitch_64
    const-string p0, "\ud83c\uddf2\ud83c\uddf6"

    return-object p0

    :pswitch_65
    const-string p0, "\ud83c\uddf2\ud83c\uddf5"

    return-object p0

    :pswitch_66
    const-string p0, "\ud83c\uddf2\ud83c\uddf4"

    return-object p0

    :pswitch_67
    const-string p0, "\ud83c\uddf2\ud83c\uddf3"

    return-object p0

    :pswitch_68
    const-string p0, "\ud83c\uddf2\ud83c\uddf2"

    return-object p0

    :pswitch_69
    const-string p0, "\ud83c\uddf2\ud83c\uddf1"

    return-object p0

    :pswitch_6a
    const-string p0, "\ud83c\uddf2\ud83c\uddf0"

    return-object p0

    :pswitch_6b
    const-string p0, "\ud83c\uddf2\ud83c\udded"

    return-object p0

    :pswitch_6c
    const-string p0, "\ud83c\uddf2\ud83c\uddec"

    return-object p0

    :pswitch_6d
    const-string p0, "\ud83c\uddf2\ud83c\uddeb"

    return-object p0

    :pswitch_6e
    const-string p0, "\ud83c\uddf2\ud83c\uddea"

    return-object p0

    :pswitch_6f
    const-string p0, "\ud83c\uddf2\ud83c\udde9"

    return-object p0

    :pswitch_70
    const-string p0, "\ud83c\uddf2\ud83c\udde8"

    return-object p0

    :pswitch_71
    const-string p0, "\ud83c\uddf2\ud83c\udde6"

    return-object p0

    :pswitch_72
    const-string p0, "\ud83c\uddf1\ud83c\uddfe"

    return-object p0

    :pswitch_73
    const-string p0, "\ud83c\uddf1\ud83c\uddfb"

    return-object p0

    :pswitch_74
    const-string p0, "\ud83c\uddf1\ud83c\uddfa"

    return-object p0

    :pswitch_75
    const-string p0, "\ud83c\uddf1\ud83c\uddf9"

    return-object p0

    :pswitch_76
    const-string p0, "\ud83c\uddf1\ud83c\uddf8"

    return-object p0

    :pswitch_77
    const-string p0, "\ud83c\uddf1\ud83c\uddf7"

    return-object p0

    :pswitch_78
    const-string p0, "\ud83c\uddf1\ud83c\uddf0"

    return-object p0

    :pswitch_79
    const-string p0, "\ud83c\uddf1\ud83c\uddee"

    return-object p0

    :pswitch_7a
    const-string p0, "\ud83c\uddf1\ud83c\udde8"

    return-object p0

    :pswitch_7b
    const-string p0, "\ud83c\uddf1\ud83c\udde7"

    return-object p0

    :pswitch_7c
    const-string p0, "\ud83c\uddf1\ud83c\udde6"

    return-object p0

    :pswitch_7d
    const-string p0, "\ud83c\uddf0\ud83c\uddff"

    return-object p0

    :pswitch_7e
    const-string p0, "\ud83c\uddf0\ud83c\uddfe"

    return-object p0

    :pswitch_7f
    const-string p0, "\ud83c\uddf0\ud83c\uddfc"

    return-object p0

    :pswitch_80
    const-string p0, "\ud83c\uddf0\ud83c\uddf7"

    return-object p0

    :pswitch_81
    const-string p0, "\ud83c\uddf0\ud83c\uddf5"

    return-object p0

    :pswitch_82
    const-string p0, "\ud83c\uddf0\ud83c\uddf3"

    return-object p0

    :pswitch_83
    const-string p0, "\ud83c\uddf0\ud83c\uddf2"

    return-object p0

    :pswitch_84
    const-string p0, "\ud83c\uddf0\ud83c\uddee"

    return-object p0

    :pswitch_85
    const-string p0, "\ud83c\uddf0\ud83c\udded"

    return-object p0

    :pswitch_86
    const-string p0, "\ud83c\uddf0\ud83c\uddec"

    return-object p0

    :pswitch_87
    const-string p0, "\ud83c\uddf0\ud83c\uddea"

    return-object p0

    :pswitch_88
    const-string p0, "\ud83c\uddef\ud83c\uddf5"

    return-object p0

    :pswitch_89
    const-string p0, "\ud83c\uddef\ud83c\uddf4"

    return-object p0

    :pswitch_8a
    const-string p0, "\ud83c\uddef\ud83c\uddf2"

    return-object p0

    :pswitch_8b
    const-string p0, "\ud83c\uddef\ud83c\uddea"

    return-object p0

    :pswitch_8c
    const-string p0, "\ud83c\uddee\ud83c\uddf9"

    return-object p0

    :pswitch_8d
    const-string p0, "\ud83c\uddee\ud83c\uddf8"

    return-object p0

    :pswitch_8e
    const-string p0, "\ud83c\uddee\ud83c\uddf7"

    return-object p0

    :pswitch_8f
    const-string p0, "\ud83c\uddee\ud83c\uddf6"

    return-object p0

    :pswitch_90
    const-string p0, "\ud83c\uddee\ud83c\uddf4"

    return-object p0

    :pswitch_91
    const-string p0, "\ud83c\uddee\ud83c\uddf3"

    return-object p0

    :pswitch_92
    const-string p0, "\ud83c\uddee\ud83c\uddf2"

    return-object p0

    :pswitch_93
    const-string p0, "\ud83c\uddee\ud83c\uddf1"

    return-object p0

    :pswitch_94
    const-string p0, "\ud83c\uddee\ud83c\uddea"

    return-object p0

    :pswitch_95
    const-string p0, "\ud83c\uddee\ud83c\udde9"

    return-object p0

    :pswitch_96
    const-string p0, "\ud83c\udded\ud83c\uddfa"

    return-object p0

    :pswitch_97
    const-string p0, "\ud83c\udded\ud83c\uddf9"

    return-object p0

    :pswitch_98
    const-string p0, "\ud83c\udded\ud83c\uddf7"

    return-object p0

    :pswitch_99
    const-string p0, "\ud83c\udded\ud83c\uddf3"

    return-object p0

    :pswitch_9a
    const-string p0, "\ud83c\udded\ud83c\uddf2"

    return-object p0

    :pswitch_9b
    const-string p0, "\ud83c\udded\ud83c\uddf0"

    return-object p0

    :pswitch_9c
    const-string p0, "\ud83c\uddec\ud83c\uddfe"

    return-object p0

    :pswitch_9d
    const-string p0, "\ud83c\uddec\ud83c\uddfc"

    return-object p0

    :pswitch_9e
    const-string p0, "\ud83c\uddec\ud83c\uddfa"

    return-object p0

    :pswitch_9f
    const-string p0, "\ud83c\uddec\ud83c\uddf9"

    return-object p0

    :pswitch_a0
    const-string p0, "\ud83c\uddec\ud83c\uddf8"

    return-object p0

    :pswitch_a1
    const-string p0, "\ud83c\uddec\ud83c\uddf7"

    return-object p0

    :pswitch_a2
    const-string p0, "\ud83c\uddec\ud83c\uddf6"

    return-object p0

    :pswitch_a3
    const-string p0, "\ud83c\uddec\ud83c\uddf5"

    return-object p0

    :pswitch_a4
    const-string p0, "\ud83c\uddec\ud83c\uddf3"

    return-object p0

    :pswitch_a5
    const-string p0, "\ud83c\uddec\ud83c\uddf2"

    return-object p0

    :pswitch_a6
    const-string p0, "\ud83c\uddec\ud83c\uddf1"

    return-object p0

    :pswitch_a7
    const-string p0, "\ud83c\uddec\ud83c\uddee"

    return-object p0

    :pswitch_a8
    const-string p0, "\ud83c\uddec\ud83c\udded"

    return-object p0

    :pswitch_a9
    const-string p0, "\ud83c\uddec\ud83c\uddec"

    return-object p0

    :pswitch_aa
    const-string p0, "\ud83c\uddec\ud83c\uddeb"

    return-object p0

    :pswitch_ab
    const-string p0, "\ud83c\uddec\ud83c\uddea"

    return-object p0

    :pswitch_ac
    const-string p0, "\ud83c\uddec\ud83c\udde9"

    return-object p0

    :pswitch_ad
    const-string p0, "\ud83c\uddec\ud83c\udde7"

    return-object p0

    :pswitch_ae
    const-string p0, "\ud83c\uddec\ud83c\udde6"

    return-object p0

    :pswitch_af
    const-string p0, "\ud83c\uddeb\ud83c\uddf7"

    return-object p0

    :pswitch_b0
    const-string p0, "\ud83c\uddeb\ud83c\uddf4"

    return-object p0

    :pswitch_b1
    const-string p0, "\ud83c\uddeb\ud83c\uddf2"

    return-object p0

    :pswitch_b2
    const-string p0, "\ud83c\uddeb\ud83c\uddf0"

    return-object p0

    :pswitch_b3
    const-string p0, "\ud83c\uddeb\ud83c\uddef"

    return-object p0

    :pswitch_b4
    const-string p0, "\ud83c\uddeb\ud83c\uddee"

    return-object p0

    :pswitch_b5
    const-string p0, "\ud83c\uddea\ud83c\uddf9"

    return-object p0

    :pswitch_b6
    const-string p0, "\ud83c\uddea\ud83c\uddf8"

    return-object p0

    :pswitch_b7
    const-string p0, "\ud83c\uddea\ud83c\uddf7"

    return-object p0

    :pswitch_b8
    const-string p0, "\ud83c\uddea\ud83c\udded"

    return-object p0

    :pswitch_b9
    const-string p0, "\ud83c\uddea\ud83c\uddec"

    return-object p0

    :pswitch_ba
    const-string p0, "\ud83c\uddea\ud83c\uddea"

    return-object p0

    :pswitch_bb
    const-string p0, "\ud83c\uddea\ud83c\udde8"

    return-object p0

    :pswitch_bc
    const-string p0, "\ud83c\udde9\ud83c\uddff"

    return-object p0

    :pswitch_bd
    const-string p0, "\ud83c\udde9\ud83c\uddf4"

    return-object p0

    :pswitch_be
    const-string p0, "\ud83c\udde9\ud83c\uddf2"

    return-object p0

    :pswitch_bf
    const-string p0, "\ud83c\udde9\ud83c\uddf0"

    return-object p0

    :pswitch_c0
    const-string p0, "\ud83c\udde9\ud83c\uddef"

    return-object p0

    :pswitch_c1
    const-string p0, "\ud83c\udde9\ud83c\uddea"

    return-object p0

    :pswitch_c2
    const-string p0, "\ud83c\udde8\ud83c\uddff"

    return-object p0

    :pswitch_c3
    const-string p0, "\ud83c\udde8\ud83c\uddfe"

    return-object p0

    :pswitch_c4
    const-string p0, "\ud83c\udde8\ud83c\uddfd"

    return-object p0

    :pswitch_c5
    const-string p0, "\ud83c\udde8\ud83c\uddfc"

    return-object p0

    :pswitch_c6
    const-string p0, "\ud83c\udde8\ud83c\uddfb"

    return-object p0

    :pswitch_c7
    const-string p0, "\ud83c\udde8\ud83c\uddfa"

    return-object p0

    :pswitch_c8
    const-string p0, "\ud83c\udde8\ud83c\uddf7"

    return-object p0

    :pswitch_c9
    const-string p0, "\ud83c\udde8\ud83c\uddf4"

    return-object p0

    :pswitch_ca
    const-string p0, "\ud83c\udde8\ud83c\uddf3"

    return-object p0

    :pswitch_cb
    const-string p0, "\ud83c\udde8\ud83c\uddf2"

    return-object p0

    :pswitch_cc
    const-string p0, "\ud83c\udde8\ud83c\uddf1"

    return-object p0

    :pswitch_cd
    const-string p0, "\ud83c\udde8\ud83c\uddf0"

    return-object p0

    :pswitch_ce
    const-string p0, "\ud83c\udde8\ud83c\uddee"

    return-object p0

    :pswitch_cf
    const-string p0, "\ud83c\udde8\ud83c\udded"

    return-object p0

    :pswitch_d0
    const-string p0, "\ud83c\udde8\ud83c\uddec"

    return-object p0

    :pswitch_d1
    const-string p0, "\ud83c\udde8\ud83c\uddeb"

    return-object p0

    :pswitch_d2
    const-string p0, "\ud83c\udde8\ud83c\udde9"

    return-object p0

    :pswitch_d3
    const-string p0, "\ud83c\udde8\ud83c\udde8"

    return-object p0

    :pswitch_d4
    const-string p0, "\ud83c\udde8\ud83c\udde6"

    return-object p0

    :pswitch_d5
    const-string p0, "\ud83c\udde7\ud83c\uddff"

    return-object p0

    :pswitch_d6
    const-string p0, "\ud83c\udde7\ud83c\uddfe"

    return-object p0

    :pswitch_d7
    const-string p0, "\ud83c\udde7\ud83c\uddfc"

    return-object p0

    :pswitch_d8
    const-string p0, "\ud83c\udde7\ud83c\uddfb"

    return-object p0

    :pswitch_d9
    const-string p0, "\ud83c\udde7\ud83c\uddf9"

    return-object p0

    :pswitch_da
    const-string p0, "\ud83c\udde7\ud83c\uddf8"

    return-object p0

    :pswitch_db
    const-string p0, "\ud83c\udde7\ud83c\uddf7"

    return-object p0

    :pswitch_dc
    const-string p0, "\ud83c\udde7\ud83c\uddf6"

    return-object p0

    :pswitch_dd
    const-string p0, "\ud83c\udde7\ud83c\uddf4"

    return-object p0

    :pswitch_de
    const-string p0, "\ud83c\udde7\ud83c\uddf3"

    return-object p0

    :pswitch_df
    const-string p0, "\ud83c\udde7\ud83c\uddf2"

    return-object p0

    :pswitch_e0
    const-string p0, "\ud83c\udde7\ud83c\uddf1"

    return-object p0

    :pswitch_e1
    const-string p0, "\ud83c\udde7\ud83c\uddef"

    return-object p0

    :pswitch_e2
    const-string p0, "\ud83c\udde7\ud83c\uddee"

    return-object p0

    :pswitch_e3
    const-string p0, "\ud83c\udde7\ud83c\udded"

    return-object p0

    :pswitch_e4
    const-string p0, "\ud83c\udde7\ud83c\uddec"

    return-object p0

    :pswitch_e5
    const-string p0, "\ud83c\udde7\ud83c\uddeb"

    return-object p0

    :pswitch_e6
    const-string p0, "\ud83c\udde7\ud83c\uddea"

    return-object p0

    :pswitch_e7
    const-string p0, "\ud83c\udde7\ud83c\udde9"

    return-object p0

    :pswitch_e8
    const-string p0, "\ud83c\udde7\ud83c\udde7"

    return-object p0

    :pswitch_e9
    const-string p0, "\ud83c\udde7\ud83c\udde6"

    return-object p0

    :pswitch_ea
    const-string p0, "\ud83c\udde6\ud83c\uddff"

    return-object p0

    :pswitch_eb
    const-string p0, "\ud83c\udde6\ud83c\uddfd"

    return-object p0

    :pswitch_ec
    const-string p0, "\ud83c\udde6\ud83c\uddfc"

    return-object p0

    :pswitch_ed
    const-string p0, "\ud83c\udde6\ud83c\uddfa"

    return-object p0

    :pswitch_ee
    const-string p0, "\ud83c\udde6\ud83c\uddf9"

    return-object p0

    :pswitch_ef
    const-string p0, "\ud83c\udde6\ud83c\uddf8"

    return-object p0

    :pswitch_f0
    const-string p0, "\ud83c\udde6\ud83c\uddf7"

    return-object p0

    :pswitch_f1
    const-string p0, "\ud83c\udde6\ud83c\uddf6"

    return-object p0

    :pswitch_f2
    const-string p0, "\ud83c\udde6\ud83c\uddf4"

    return-object p0

    :pswitch_f3
    const-string p0, "\ud83c\udde6\ud83c\uddf2"

    return-object p0

    :pswitch_f4
    const-string p0, "\ud83c\udde6\ud83c\uddf1"

    return-object p0

    :pswitch_f5
    const-string p0, "\ud83c\udde6\ud83c\uddee"

    return-object p0

    :pswitch_f6
    const-string p0, "\ud83c\udde6\ud83c\uddec"

    return-object p0

    :pswitch_f7
    const-string p0, "\ud83c\udde6\ud83c\uddeb"

    return-object p0

    :pswitch_f8
    const-string p0, "\ud83c\udde6\ud83c\uddea"

    return-object p0

    :pswitch_f9
    const-string p0, "\ud83c\udde6\ud83c\udde9"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xc23 -> :sswitch_f9
        0xc24 -> :sswitch_f8
        0xc25 -> :sswitch_f7
        0xc26 -> :sswitch_f6
        0xc28 -> :sswitch_f5
        0xc2b -> :sswitch_f4
        0xc2c -> :sswitch_f3
        0xc2e -> :sswitch_f2
        0xc30 -> :sswitch_f1
        0xc31 -> :sswitch_f0
        0xc32 -> :sswitch_ef
        0xc33 -> :sswitch_ee
        0xc34 -> :sswitch_ed
        0xc36 -> :sswitch_ec
        0xc37 -> :sswitch_eb
        0xc39 -> :sswitch_ea
        0xc3f -> :sswitch_e9
        0xc40 -> :sswitch_e8
        0xc42 -> :sswitch_e7
        0xc43 -> :sswitch_e6
        0xc44 -> :sswitch_e5
        0xc45 -> :sswitch_e4
        0xc46 -> :sswitch_e3
        0xc47 -> :sswitch_e2
        0xc48 -> :sswitch_e1
        0xc4a -> :sswitch_e0
        0xc4b -> :sswitch_df
        0xc4c -> :sswitch_de
        0xc4d -> :sswitch_dd
        0xc4f -> :sswitch_dc
        0xc50 -> :sswitch_db
        0xc51 -> :sswitch_da
        0xc52 -> :sswitch_d9
        0xc54 -> :sswitch_d8
        0xc55 -> :sswitch_d7
        0xc57 -> :sswitch_d6
        0xc58 -> :sswitch_d5
        0xc5e -> :sswitch_d4
        0xc60 -> :sswitch_d3
        0xc61 -> :sswitch_d2
        0xc63 -> :sswitch_d1
        0xc64 -> :sswitch_d0
        0xc65 -> :sswitch_cf
        0xc66 -> :sswitch_ce
        0xc68 -> :sswitch_cd
        0xc69 -> :sswitch_cc
        0xc6a -> :sswitch_cb
        0xc6b -> :sswitch_ca
        0xc6c -> :sswitch_c9
        0xc6f -> :sswitch_c8
        0xc72 -> :sswitch_c7
        0xc73 -> :sswitch_c6
        0xc74 -> :sswitch_c5
        0xc75 -> :sswitch_c4
        0xc76 -> :sswitch_c3
        0xc77 -> :sswitch_c2
        0xc81 -> :sswitch_c1
        0xc86 -> :sswitch_c0
        0xc87 -> :sswitch_bf
        0xc89 -> :sswitch_be
        0xc8b -> :sswitch_bd
        0xc96 -> :sswitch_bc
        0xc9e -> :sswitch_bb
        0xca0 -> :sswitch_ba
        0xca2 -> :sswitch_b9
        0xca3 -> :sswitch_b8
        0xcad -> :sswitch_b7
        0xcae -> :sswitch_b6
        0xcaf -> :sswitch_b5
        0xcc3 -> :sswitch_b4
        0xcc4 -> :sswitch_b3
        0xcc5 -> :sswitch_b2
        0xcc7 -> :sswitch_b1
        0xcc9 -> :sswitch_b0
        0xccc -> :sswitch_af
        0xcda -> :sswitch_ae
        0xcdb -> :sswitch_ad
        0xcdd -> :sswitch_ac
        0xcde -> :sswitch_ab
        0xcdf -> :sswitch_aa
        0xce0 -> :sswitch_a9
        0xce1 -> :sswitch_a8
        0xce2 -> :sswitch_a7
        0xce5 -> :sswitch_a6
        0xce6 -> :sswitch_a5
        0xce7 -> :sswitch_a4
        0xce9 -> :sswitch_a3
        0xcea -> :sswitch_a2
        0xceb -> :sswitch_a1
        0xcec -> :sswitch_a0
        0xced -> :sswitch_9f
        0xcee -> :sswitch_9e
        0xcf0 -> :sswitch_9d
        0xcf2 -> :sswitch_9c
        0xd03 -> :sswitch_9b
        0xd05 -> :sswitch_9a
        0xd06 -> :sswitch_99
        0xd0a -> :sswitch_98
        0xd0c -> :sswitch_97
        0xd0d -> :sswitch_96
        0xd1b -> :sswitch_95
        0xd1c -> :sswitch_94
        0xd23 -> :sswitch_93
        0xd24 -> :sswitch_92
        0xd25 -> :sswitch_91
        0xd26 -> :sswitch_90
        0xd28 -> :sswitch_8f
        0xd29 -> :sswitch_8e
        0xd2a -> :sswitch_8d
        0xd2b -> :sswitch_8c
        0xd3b -> :sswitch_8b
        0xd43 -> :sswitch_8a
        0xd45 -> :sswitch_89
        0xd46 -> :sswitch_88
        0xd5a -> :sswitch_87
        0xd5c -> :sswitch_86
        0xd5d -> :sswitch_85
        0xd5e -> :sswitch_84
        0xd62 -> :sswitch_83
        0xd63 -> :sswitch_82
        0xd65 -> :sswitch_81
        0xd67 -> :sswitch_80
        0xd6c -> :sswitch_7f
        0xd6e -> :sswitch_7e
        0xd6f -> :sswitch_7d
        0xd75 -> :sswitch_7c
        0xd76 -> :sswitch_7b
        0xd77 -> :sswitch_7a
        0xd7d -> :sswitch_79
        0xd7f -> :sswitch_78
        0xd86 -> :sswitch_77
        0xd87 -> :sswitch_76
        0xd88 -> :sswitch_75
        0xd89 -> :sswitch_74
        0xd8a -> :sswitch_73
        0xd8d -> :sswitch_72
        0xd94 -> :sswitch_71
        0xd96 -> :sswitch_70
        0xd97 -> :sswitch_6f
        0xd98 -> :sswitch_6e
        0xd99 -> :sswitch_6d
        0xd9a -> :sswitch_6c
        0xd9b -> :sswitch_6b
        0xd9e -> :sswitch_6a
        0xd9f -> :sswitch_69
        0xda0 -> :sswitch_68
        0xda1 -> :sswitch_67
        0xda2 -> :sswitch_66
        0xda3 -> :sswitch_65
        0xda4 -> :sswitch_64
        0xda5 -> :sswitch_63
        0xda6 -> :sswitch_62
        0xda7 -> :sswitch_61
        0xda8 -> :sswitch_60
        0xda9 -> :sswitch_5f
        0xdaa -> :sswitch_5e
        0xdab -> :sswitch_5d
        0xdac -> :sswitch_5c
        0xdad -> :sswitch_5b
        0xdb3 -> :sswitch_5a
        0xdb5 -> :sswitch_59
        0xdb7 -> :sswitch_58
        0xdb8 -> :sswitch_57
        0xdb9 -> :sswitch_56
        0xdbb -> :sswitch_55
        0xdbe -> :sswitch_54
        0xdc1 -> :sswitch_53
        0xdc2 -> :sswitch_52
        0xdc4 -> :sswitch_51
        0xdc7 -> :sswitch_50
        0xdcc -> :sswitch_4f
        0xdde -> :sswitch_4e
        0xdf1 -> :sswitch_4d
        0xdf5 -> :sswitch_4c
        0xdf6 -> :sswitch_4b
        0xdf7 -> :sswitch_4a
        0xdf8 -> :sswitch_49
        0xdfb -> :sswitch_48
        0xdfc -> :sswitch_47
        0xdfd -> :sswitch_46
        0xdfe -> :sswitch_45
        0xe02 -> :sswitch_44
        0xe03 -> :sswitch_43
        0xe04 -> :sswitch_42
        0xe07 -> :sswitch_41
        0xe09 -> :sswitch_40
        0xe10 -> :sswitch_3f
        0xe33 -> :sswitch_3e
        0xe3d -> :sswitch_3d
        0xe41 -> :sswitch_3c
        0xe43 -> :sswitch_3b
        0xe45 -> :sswitch_3a
        0xe4e -> :sswitch_39
        0xe4f -> :sswitch_38
        0xe50 -> :sswitch_37
        0xe51 -> :sswitch_36
        0xe52 -> :sswitch_35
        0xe54 -> :sswitch_34
        0xe55 -> :sswitch_33
        0xe56 -> :sswitch_32
        0xe57 -> :sswitch_31
        0xe58 -> :sswitch_30
        0xe59 -> :sswitch_2f
        0xe5a -> :sswitch_2e
        0xe5b -> :sswitch_2d
        0xe5c -> :sswitch_2c
        0xe5f -> :sswitch_2b
        0xe60 -> :sswitch_2a
        0xe61 -> :sswitch_29
        0xe63 -> :sswitch_28
        0xe65 -> :sswitch_27
        0xe66 -> :sswitch_26
        0xe67 -> :sswitch_25
        0xe6f -> :sswitch_24
        0xe70 -> :sswitch_23
        0xe72 -> :sswitch_22
        0xe73 -> :sswitch_21
        0xe74 -> :sswitch_20
        0xe76 -> :sswitch_1f
        0xe77 -> :sswitch_1e
        0xe78 -> :sswitch_1d
        0xe79 -> :sswitch_1c
        0xe7a -> :sswitch_1b
        0xe7b -> :sswitch_1a
        0xe7e -> :sswitch_19
        0xe80 -> :sswitch_18
        0xe82 -> :sswitch_17
        0xe83 -> :sswitch_16
        0xe86 -> :sswitch_15
        0xe8c -> :sswitch_14
        0xe92 -> :sswitch_13
        0xe98 -> :sswitch_12
        0xe9e -> :sswitch_11
        0xea4 -> :sswitch_10
        0xea5 -> :sswitch_f
        0xeab -> :sswitch_e
        0xead -> :sswitch_d
        0xeaf -> :sswitch_c
        0xeb1 -> :sswitch_b
        0xeb3 -> :sswitch_a
        0xeb8 -> :sswitch_9
        0xebf -> :sswitch_8
        0xecf -> :sswitch_7
        0xedc -> :sswitch_6
        0xef3 -> :sswitch_5
        0xf0c -> :sswitch_4
        0xf1b -> :sswitch_3
        0xf27 -> :sswitch_2
        0xf33 -> :sswitch_1
        0xf3d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i()Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lc3/a;

    const-string v2, "376"

    const-string v3, "Andorra"

    const-string v4, "ad"

    invoke-direct {v1, v4, v2, v3}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "United Arab Emirates (UAE)"

    const-string v3, "ae"

    const-string v4, "971"

    invoke-direct {v1, v3, v4, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Afghanistan"

    const-string v3, "af"

    const-string v4, "93"

    invoke-direct {v1, v3, v4, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "ag"

    const-string v3, "1"

    const-string v4, "Antigua and Barbuda"

    invoke-direct {v1, v2, v3, v4}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "ai"

    const-string v4, "Anguilla"

    invoke-direct {v1, v2, v3, v4}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Albania"

    const-string v4, "al"

    const-string v5, "355"

    invoke-direct {v1, v4, v5, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Armenia"

    const-string v4, "am"

    const-string v5, "374"

    invoke-direct {v1, v4, v5, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Angola"

    const-string v4, "ao"

    const-string v5, "244"

    invoke-direct {v1, v4, v5, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "aq"

    const-string v4, "672"

    const-string v5, "Antarctica"

    invoke-direct {v1, v2, v4, v5}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Argentina"

    const-string v5, "ar"

    const-string v6, "54"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "as"

    const-string v5, "American Samoa"

    invoke-direct {v1, v2, v3, v5}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Austria"

    const-string v5, "at"

    const-string v6, "43"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "au"

    const-string v5, "61"

    const-string v6, "Australia"

    invoke-direct {v1, v2, v5, v6}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Aruba"

    const-string v6, "aw"

    const-string v7, "297"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "ax"

    const-string v6, "358"

    const-string v7, "\u00c5land Islands"

    invoke-direct {v1, v2, v6, v7}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Azerbaijan"

    const-string v7, "az"

    const-string v8, "994"

    invoke-direct {v1, v7, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Bosnia And Herzegovina"

    const-string v7, "ba"

    const-string v8, "387"

    invoke-direct {v1, v7, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "bb"

    const-string v7, "Barbados"

    invoke-direct {v1, v2, v3, v7}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Bangladesh"

    const-string v7, "bd"

    const-string v8, "880"

    invoke-direct {v1, v7, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Belgium"

    const-string v7, "be"

    const-string v8, "32"

    invoke-direct {v1, v7, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Burkina Faso"

    const-string v7, "bf"

    const-string v8, "226"

    invoke-direct {v1, v7, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Bulgaria"

    const-string v7, "bg"

    const-string v8, "359"

    invoke-direct {v1, v7, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Bahrain"

    const-string v7, "bh"

    const-string v8, "973"

    invoke-direct {v1, v7, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Burundi"

    const-string v7, "bi"

    const-string v8, "257"

    invoke-direct {v1, v7, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Benin"

    const-string v7, "bj"

    const-string v8, "229"

    invoke-direct {v1, v7, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "bl"

    const-string v7, "590"

    const-string v8, "Saint Barth\u00e9lemy"

    invoke-direct {v1, v2, v7, v8}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "bm"

    const-string v8, "Bermuda"

    invoke-direct {v1, v2, v3, v8}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Brunei Darussalam"

    const-string v8, "bn"

    const-string v9, "673"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Bolivia, Plurinational State Of"

    const-string v8, "bo"

    const-string v9, "591"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Brazil"

    const-string v8, "br"

    const-string v9, "55"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "bs"

    const-string v8, "Bahamas"

    invoke-direct {v1, v2, v3, v8}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Bhutan"

    const-string v8, "bt"

    const-string v9, "975"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Botswana"

    const-string v8, "bw"

    const-string v9, "267"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Belarus"

    const-string v8, "by"

    const-string v9, "375"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Belize"

    const-string v8, "bz"

    const-string v9, "501"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "ca"

    const-string v8, "Canada"

    invoke-direct {v1, v2, v3, v8}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "cc"

    const-string v8, "Cocos (keeling) Islands"

    invoke-direct {v1, v2, v5, v8}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Congo, The Democratic Republic Of The"

    const-string v8, "cd"

    const-string v9, "243"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Central African Republic"

    const-string v8, "cf"

    const-string v9, "236"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Congo"

    const-string v8, "cg"

    const-string v9, "242"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Switzerland"

    const-string v8, "ch"

    const-string v9, "41"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "C\u00f4te D\'ivoire"

    const-string v8, "ci"

    const-string v9, "225"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Cook Islands"

    const-string v8, "ck"

    const-string v9, "682"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Chile"

    const-string v8, "cl"

    const-string v9, "56"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Cameroon"

    const-string v8, "cm"

    const-string v9, "237"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "China"

    const-string v8, "cn"

    const-string v9, "86"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Colombia"

    const-string v8, "co"

    const-string v9, "57"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Costa Rica"

    const-string v8, "cr"

    const-string v9, "506"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Cuba"

    const-string v8, "cu"

    const-string v9, "53"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Cape Verde"

    const-string v8, "cv"

    const-string v9, "238"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Cura\u00e7ao"

    const-string v8, "cw"

    const-string v9, "599"

    invoke-direct {v1, v8, v9, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "cx"

    const-string v8, "Christmas Island"

    invoke-direct {v1, v2, v5, v8}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Cyprus"

    const-string v5, "cy"

    const-string v8, "357"

    invoke-direct {v1, v5, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Czech Republic"

    const-string v5, "cz"

    const-string v8, "420"

    invoke-direct {v1, v5, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Germany"

    const-string v5, "de"

    const-string v8, "49"

    invoke-direct {v1, v5, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Djibouti"

    const-string v5, "dj"

    const-string v8, "253"

    invoke-direct {v1, v5, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Denmark"

    const-string v5, "dk"

    const-string v8, "45"

    invoke-direct {v1, v5, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "dm"

    const-string v5, "Dominica"

    invoke-direct {v1, v2, v3, v5}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "do"

    const-string v5, "Dominican Republic"

    invoke-direct {v1, v2, v3, v5}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Algeria"

    const-string v5, "dz"

    const-string v8, "213"

    invoke-direct {v1, v5, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Ecuador"

    const-string v5, "ec"

    const-string v8, "593"

    invoke-direct {v1, v5, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Estonia"

    const-string v5, "ee"

    const-string v8, "372"

    invoke-direct {v1, v5, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Egypt"

    const-string v5, "eg"

    const-string v8, "20"

    invoke-direct {v1, v5, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Eritrea"

    const-string v5, "er"

    const-string v8, "291"

    invoke-direct {v1, v5, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Spain"

    const-string v5, "es"

    const-string v8, "34"

    invoke-direct {v1, v5, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Ethiopia"

    const-string v5, "et"

    const-string v8, "251"

    invoke-direct {v1, v5, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "fi"

    const-string v5, "Finland"

    invoke-direct {v1, v2, v6, v5}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Fiji"

    const-string v5, "fj"

    const-string v6, "679"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Falkland Islands (malvinas)"

    const-string v5, "fk"

    const-string v6, "500"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Micronesia, Federated States Of"

    const-string v5, "fm"

    const-string v6, "691"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Faroe Islands"

    const-string v5, "fo"

    const-string v6, "298"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "France"

    const-string v5, "fr"

    const-string v6, "33"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Gabon"

    const-string v5, "ga"

    const-string v6, "241"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "gb"

    const-string v5, "44"

    const-string v6, "United Kingdom"

    invoke-direct {v1, v2, v5, v6}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "gd"

    const-string v6, "Grenada"

    invoke-direct {v1, v2, v3, v6}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Georgia"

    const-string v6, "ge"

    const-string v8, "995"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "French Guyana"

    const-string v6, "gf"

    const-string v8, "594"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Ghana"

    const-string v6, "gh"

    const-string v8, "233"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Gibraltar"

    const-string v6, "gi"

    const-string v8, "350"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Greenland"

    const-string v6, "gl"

    const-string v8, "299"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Gambia"

    const-string v6, "gm"

    const-string v8, "220"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Guinea"

    const-string v6, "gn"

    const-string v8, "224"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Guadeloupe"

    const-string v6, "gp"

    const-string v8, "450"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Equatorial Guinea"

    const-string v6, "gq"

    const-string v8, "240"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Greece"

    const-string v6, "gr"

    const-string v8, "30"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Guatemala"

    const-string v6, "gt"

    const-string v8, "502"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "gu"

    const-string v6, "Guam"

    invoke-direct {v1, v2, v3, v6}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Guinea-bissau"

    const-string v6, "gw"

    const-string v8, "245"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Guyana"

    const-string v6, "gy"

    const-string v8, "592"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Hong Kong"

    const-string v6, "hk"

    const-string v8, "852"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Honduras"

    const-string v6, "hn"

    const-string v8, "504"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Croatia"

    const-string v6, "hr"

    const-string v8, "385"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Haiti"

    const-string v6, "ht"

    const-string v8, "509"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Hungary"

    const-string v6, "hu"

    const-string v8, "36"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Indonesia"

    const-string v6, "id"

    const-string v8, "62"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Ireland"

    const-string v6, "ie"

    const-string v8, "353"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Israel"

    const-string v6, "il"

    const-string v8, "972"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "im"

    const-string v6, "Isle Of Man"

    invoke-direct {v1, v2, v5, v6}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Iceland"

    const-string v6, "is"

    const-string v8, "354"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "India"

    const-string v6, "in"

    const-string v8, "91"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "British Indian Ocean Territory"

    const-string v6, "io"

    const-string v8, "246"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Iraq"

    const-string v6, "iq"

    const-string v8, "964"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Iran, Islamic Republic Of"

    const-string v6, "ir"

    const-string v8, "98"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Italy"

    const-string v6, "it"

    const-string v8, "39"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "je"

    const-string v6, "Jersey "

    invoke-direct {v1, v2, v5, v6}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "jm"

    const-string v5, "Jamaica"

    invoke-direct {v1, v2, v3, v5}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Jordan"

    const-string v5, "jo"

    const-string v6, "962"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Japan"

    const-string v5, "jp"

    const-string v6, "81"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Kenya"

    const-string v5, "ke"

    const-string v6, "254"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Kyrgyzstan"

    const-string v5, "kg"

    const-string v6, "996"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Cambodia"

    const-string v5, "kh"

    const-string v6, "855"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Kiribati"

    const-string v5, "ki"

    const-string v6, "686"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Comoros"

    const-string v5, "km"

    const-string v6, "269"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "kn"

    const-string v5, "Saint Kitts and Nevis"

    invoke-direct {v1, v2, v3, v5}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "North Korea"

    const-string v5, "kp"

    const-string v6, "850"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "South Korea"

    const-string v5, "kr"

    const-string v6, "82"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Kuwait"

    const-string v5, "kw"

    const-string v6, "965"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "ky"

    const-string v5, "Cayman Islands"

    invoke-direct {v1, v2, v3, v5}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "kz"

    const-string v5, "7"

    const-string v6, "Kazakhstan"

    invoke-direct {v1, v2, v5, v6}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Lao People\'s Democratic Republic"

    const-string v6, "la"

    const-string v8, "856"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Lebanon"

    const-string v6, "lb"

    const-string v8, "961"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "lc"

    const-string v6, "Saint Lucia"

    invoke-direct {v1, v2, v3, v6}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Liechtenstein"

    const-string v6, "li"

    const-string v8, "423"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Sri Lanka"

    const-string v6, "lk"

    const-string v8, "94"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Liberia"

    const-string v6, "lr"

    const-string v8, "231"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Lesotho"

    const-string v6, "ls"

    const-string v8, "266"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Lithuania"

    const-string v6, "lt"

    const-string v8, "370"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Luxembourg"

    const-string v6, "lu"

    const-string v8, "352"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Latvia"

    const-string v6, "lv"

    const-string v8, "371"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Libya"

    const-string v6, "ly"

    const-string v8, "218"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Morocco"

    const-string v6, "ma"

    const-string v8, "212"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Monaco"

    const-string v6, "mc"

    const-string v8, "377"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Moldova, Republic Of"

    const-string v6, "md"

    const-string v8, "373"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Montenegro"

    const-string v6, "me"

    const-string v8, "382"

    invoke-direct {v1, v6, v8, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "mf"

    const-string v6, "Saint Martin"

    invoke-direct {v1, v2, v7, v6}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Madagascar"

    const-string v6, "mg"

    const-string v7, "261"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Marshall Islands"

    const-string v6, "mh"

    const-string v7, "692"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Macedonia (FYROM)"

    const-string v6, "mk"

    const-string v7, "389"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Mali"

    const-string v6, "ml"

    const-string v7, "223"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Myanmar"

    const-string v6, "mm"

    const-string v7, "95"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Mongolia"

    const-string v6, "mn"

    const-string v7, "976"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Macau"

    const-string v6, "mo"

    const-string v7, "853"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "mp"

    const-string v6, "Northern Mariana Islands"

    invoke-direct {v1, v2, v3, v6}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Martinique"

    const-string v6, "mq"

    const-string v7, "596"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Mauritania"

    const-string v6, "mr"

    const-string v7, "222"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "ms"

    const-string v6, "Montserrat"

    invoke-direct {v1, v2, v3, v6}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Malta"

    const-string v6, "mt"

    const-string v7, "356"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Mauritius"

    const-string v6, "mu"

    const-string v7, "230"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Maldives"

    const-string v6, "mv"

    const-string v7, "960"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Malawi"

    const-string v6, "mw"

    const-string v7, "265"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Mexico"

    const-string v6, "mx"

    const-string v7, "52"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Malaysia"

    const-string v6, "my"

    const-string v7, "60"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Mozambique"

    const-string v6, "mz"

    const-string v7, "258"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Namibia"

    const-string v6, "na"

    const-string v7, "264"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "New Caledonia"

    const-string v6, "nc"

    const-string v7, "687"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Niger"

    const-string v6, "ne"

    const-string v7, "227"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "nf"

    const-string v6, "Norfolk Islands"

    invoke-direct {v1, v2, v4, v6}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Nigeria"

    const-string v4, "ng"

    const-string v6, "234"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Nicaragua"

    const-string v4, "ni"

    const-string v6, "505"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Netherlands"

    const-string v4, "nl"

    const-string v6, "31"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Norway"

    const-string v4, "no"

    const-string v6, "47"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Nepal"

    const-string v4, "np"

    const-string v6, "977"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Nauru"

    const-string v4, "nr"

    const-string v6, "674"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Niue"

    const-string v4, "nu"

    const-string v6, "683"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "New Zealand"

    const-string v4, "nz"

    const-string v6, "64"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Oman"

    const-string v4, "om"

    const-string v6, "968"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Panama"

    const-string v4, "pa"

    const-string v6, "507"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Peru"

    const-string v4, "pe"

    const-string v6, "51"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "French Polynesia"

    const-string v4, "pf"

    const-string v6, "689"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Papua New Guinea"

    const-string v4, "pg"

    const-string v6, "675"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Philippines"

    const-string v4, "ph"

    const-string v6, "63"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Pakistan"

    const-string v4, "pk"

    const-string v6, "92"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Poland"

    const-string v4, "pl"

    const-string v6, "48"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Saint Pierre And Miquelon"

    const-string v4, "pm"

    const-string v6, "508"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Pitcairn Islands"

    const-string v4, "pn"

    const-string v6, "870"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "pr"

    const-string v4, "Puerto Rico"

    invoke-direct {v1, v2, v3, v4}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Palestine"

    const-string v4, "ps"

    const-string v6, "970"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Portugal"

    const-string v4, "pt"

    const-string v6, "351"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Palau"

    const-string v4, "pw"

    const-string v6, "680"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Paraguay"

    const-string v4, "py"

    const-string v6, "595"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Qatar"

    const-string v4, "qa"

    const-string v6, "974"

    invoke-direct {v1, v4, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "re"

    const-string v4, "262"

    const-string v6, "R\u00e9union"

    invoke-direct {v1, v2, v4, v6}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Romania"

    const-string v6, "ro"

    const-string v7, "40"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Serbia"

    const-string v6, "rs"

    const-string v7, "381"

    invoke-direct {v1, v6, v7, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "ru"

    const-string v6, "Russian Federation"

    invoke-direct {v1, v2, v5, v6}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Rwanda"

    const-string v5, "rw"

    const-string v6, "250"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Saudi Arabia"

    const-string v5, "sa"

    const-string v6, "966"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Solomon Islands"

    const-string v5, "sb"

    const-string v6, "677"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Seychelles"

    const-string v5, "sc"

    const-string v6, "248"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Sudan"

    const-string v5, "sd"

    const-string v6, "249"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Sweden"

    const-string v5, "se"

    const-string v6, "46"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Singapore"

    const-string v5, "sg"

    const-string v6, "65"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Saint Helena, Ascension And Tristan Da Cunha"

    const-string v5, "sh"

    const-string v6, "290"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Slovenia"

    const-string v5, "si"

    const-string v6, "386"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Slovakia"

    const-string v5, "sk"

    const-string v6, "421"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Sierra Leone"

    const-string v5, "sl"

    const-string v6, "232"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "San Marino"

    const-string v5, "sm"

    const-string v6, "378"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Senegal"

    const-string v5, "sn"

    const-string v6, "221"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Somalia"

    const-string v5, "so"

    const-string v6, "252"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Suriname"

    const-string v5, "sr"

    const-string v6, "597"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "South Sudan"

    const-string v5, "ss"

    const-string v6, "211"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Sao Tome And Principe"

    const-string v5, "st"

    const-string v6, "239"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "El Salvador"

    const-string v5, "sv"

    const-string v6, "503"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "sx"

    const-string v5, "Sint Maarten"

    invoke-direct {v1, v2, v3, v5}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Syrian Arab Republic"

    const-string v5, "sy"

    const-string v6, "963"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Swaziland"

    const-string v5, "sz"

    const-string v6, "268"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "tc"

    const-string v5, "Turks and Caicos Islands"

    invoke-direct {v1, v2, v3, v5}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Chad"

    const-string v5, "td"

    const-string v6, "235"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Togo"

    const-string v5, "tg"

    const-string v6, "228"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Thailand"

    const-string v5, "th"

    const-string v6, "66"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Tajikistan"

    const-string v5, "tj"

    const-string v6, "992"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Tokelau"

    const-string v5, "tk"

    const-string v6, "690"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Timor-leste"

    const-string v5, "tl"

    const-string v6, "670"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Turkmenistan"

    const-string v5, "tm"

    const-string v6, "993"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Tunisia"

    const-string v5, "tn"

    const-string v6, "216"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Tonga"

    const-string v5, "to"

    const-string v6, "676"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Turkey"

    const-string v5, "tr"

    const-string v6, "90"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "tt"

    const-string v5, "Trinidad &amp; Tobago"

    invoke-direct {v1, v2, v3, v5}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Tuvalu"

    const-string v5, "tv"

    const-string v6, "688"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Taiwan"

    const-string v5, "tw"

    const-string v6, "886"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Tanzania, United Republic Of"

    const-string v5, "tz"

    const-string v6, "255"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Ukraine"

    const-string v5, "ua"

    const-string v6, "380"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Uganda"

    const-string v5, "ug"

    const-string v6, "256"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "us"

    const-string v5, "United States"

    invoke-direct {v1, v2, v3, v5}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Uruguay"

    const-string v5, "uy"

    const-string v6, "598"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Uzbekistan"

    const-string v5, "uz"

    const-string v6, "998"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Holy See (vatican City State)"

    const-string v5, "va"

    const-string v6, "379"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "vc"

    const-string v5, "Saint Vincent &amp; The Grenadines"

    invoke-direct {v1, v2, v3, v5}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Venezuela, Bolivarian Republic Of"

    const-string v5, "ve"

    const-string v6, "58"

    invoke-direct {v1, v5, v6, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "vg"

    const-string v5, "British Virgin Islands"

    invoke-direct {v1, v2, v3, v5}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "vi"

    const-string v5, "US Virgin Islands"

    invoke-direct {v1, v2, v3, v5}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Vietnam"

    const-string v3, "vn"

    const-string v5, "84"

    invoke-direct {v1, v3, v5, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Vanuatu"

    const-string v3, "vu"

    const-string v5, "678"

    invoke-direct {v1, v3, v5, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Wallis And Futuna"

    const-string v3, "wf"

    const-string v5, "681"

    invoke-direct {v1, v3, v5, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Samoa"

    const-string v3, "ws"

    const-string v5, "685"

    invoke-direct {v1, v3, v5, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Kosovo"

    const-string v3, "xk"

    const-string v5, "383"

    invoke-direct {v1, v3, v5, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Yemen"

    const-string v3, "ye"

    const-string v5, "967"

    invoke-direct {v1, v3, v5, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "yt"

    const-string v3, "Mayotte"

    invoke-direct {v1, v2, v4, v3}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "South Africa"

    const-string v3, "za"

    const-string v4, "27"

    invoke-direct {v1, v3, v4, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Zambia"

    const-string v3, "zm"

    const-string v4, "260"

    invoke-direct {v1, v3, v4, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc3/a;

    const-string v2, "Zimbabwe"

    const-string v3, "zw"

    const-string v4, "263"

    invoke-direct {v1, v3, v4, v2}, Lc3/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static j(Landroid/content/Context;Lc3/o;)Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lc3/a;->f:Lc3/o;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    sget-object v0, Lc3/a;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lc3/a;->l(Landroid/content/Context;Lc3/o;)V

    :cond_1
    sget-object p0, Lc3/a;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static l(Landroid/content/Context;Lc3/o;)V
    .locals 8

    const-string v0, "ccp_"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "raw"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, v0, v6, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-interface {v3, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    move-object v4, v0

    :goto_0
    const/4 v5, 0x1

    if-eq p0, v5, :cond_5

    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    if-eq p0, v6, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p0, "country"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v6, 0x0

    if-eqz p0, :cond_1

    new-instance p0, Lc3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v5, -0x63

    iput v5, p0, Lc3/a;->e:I

    const-string v5, "name_code"

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lc3/a;->a:Ljava/lang/String;

    const-string v5, "phone_code"

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lc3/a;->b:Ljava/lang/String;

    const-string v5, "english_name"

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lc3/a;->d:Ljava/lang/String;

    const-string v5, "name"

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lc3/a;->c:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    goto :goto_5

    :cond_1
    const-string p0, "ccp_dialog_title"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "translation"

    if-eqz p0, :cond_2

    :try_start_2
    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    goto :goto_1

    :cond_2
    const-string p0, "ccp_dialog_search_hint_message"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    goto :goto_1

    :cond_3
    const-string p0, "ccp_dialog_no_result_ack_message"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    :cond_4
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    :cond_5
    sput-object p1, Lc3/a;->f:Lc3/o;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catch_3
    move-exception p0

    move-object v0, v2

    move-object v4, v0

    goto :goto_3

    :catch_4
    move-exception p0

    move-object v0, v2

    move-object v4, v0

    goto :goto_4

    :catch_5
    move-exception p0

    move-object v0, v2

    move-object v4, v0

    goto :goto_5

    :goto_2
    throw p0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :goto_5
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_6

    sget-object p0, Lc3/o;->d:Lc3/o;

    sput-object p0, Lc3/a;->f:Lc3/o;

    invoke-static {}, Lc3/a;->i()Ljava/util/ArrayList;

    move-result-object v1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_7

    goto :goto_7

    :cond_7
    const-string v2, "Select a country"

    :goto_7
    sput-object v2, Lc3/a;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_8

    goto :goto_8

    :cond_8
    const-string v0, "Search..."

    :goto_8
    sput-object v0, Lc3/a;->m:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_9

    goto :goto_9

    :cond_9
    const-string v4, "Results not found"

    :goto_9
    sput-object v4, Lc3/a;->n:Ljava/lang/String;

    sput-object v1, Lc3/a;->o:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lc3/a;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p0, Lc3/a;->c:Ljava/lang/String;

    iget-object p1, p1, Lc3/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final h()I
    .locals 4

    iget v0, p0, Lc3/a;->e:I

    const/16 v1, -0x63

    if-ne v0, v1, :cond_f2

    iget-object v0, p0, Lc3/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f080212

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "zw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xf1

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "zm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xf0

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "za"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0xef

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "yt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0xee

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "ye"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0xed

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "xk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xec

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "ws"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0xeb

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "wf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0xea

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "vu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0xe9

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "vn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0xe8

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "vi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0xe7

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "vg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0xe6

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "ve"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0xe5

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "vc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0xe4

    goto/16 :goto_0

    :sswitch_e
    const-string v3, "va"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v2, 0xe3

    goto/16 :goto_0

    :sswitch_f
    const-string v3, "uz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0xe2

    goto/16 :goto_0

    :sswitch_10
    const-string v3, "uy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0xe1

    goto/16 :goto_0

    :sswitch_11
    const-string v3, "us"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0xe0

    goto/16 :goto_0

    :sswitch_12
    const-string v3, "ug"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v2, 0xdf

    goto/16 :goto_0

    :sswitch_13
    const-string v3, "ua"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v2, 0xde

    goto/16 :goto_0

    :sswitch_14
    const-string v3, "tz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v2, 0xdd

    goto/16 :goto_0

    :sswitch_15
    const-string v3, "tw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0xdc

    goto/16 :goto_0

    :sswitch_16
    const-string v3, "tv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v2, 0xdb

    goto/16 :goto_0

    :sswitch_17
    const-string v3, "tt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v2, 0xda

    goto/16 :goto_0

    :sswitch_18
    const-string v3, "tr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v2, 0xd9

    goto/16 :goto_0

    :sswitch_19
    const-string v3, "to"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v2, 0xd8

    goto/16 :goto_0

    :sswitch_1a
    const-string v3, "tn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v2, 0xd7

    goto/16 :goto_0

    :sswitch_1b
    const-string v3, "tm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v2, 0xd6

    goto/16 :goto_0

    :sswitch_1c
    const-string v3, "tl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v2, 0xd5

    goto/16 :goto_0

    :sswitch_1d
    const-string v3, "tk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v2, 0xd4

    goto/16 :goto_0

    :sswitch_1e
    const-string v3, "tj"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v2, 0xd3

    goto/16 :goto_0

    :sswitch_1f
    const-string v3, "th"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v2, 0xd2

    goto/16 :goto_0

    :sswitch_20
    const-string v3, "tg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v2, 0xd1

    goto/16 :goto_0

    :sswitch_21
    const-string v3, "td"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v2, 0xd0

    goto/16 :goto_0

    :sswitch_22
    const-string v3, "tc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v2, 0xcf

    goto/16 :goto_0

    :sswitch_23
    const-string v3, "sz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v2, 0xce

    goto/16 :goto_0

    :sswitch_24
    const-string v3, "sy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v2, 0xcd

    goto/16 :goto_0

    :sswitch_25
    const-string v3, "sx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v2, 0xcc

    goto/16 :goto_0

    :sswitch_26
    const-string v3, "sv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v2, 0xcb

    goto/16 :goto_0

    :sswitch_27
    const-string v3, "st"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v2, 0xca

    goto/16 :goto_0

    :sswitch_28
    const-string v3, "ss"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v2, 0xc9

    goto/16 :goto_0

    :sswitch_29
    const-string v3, "sr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v2, 0xc8

    goto/16 :goto_0

    :sswitch_2a
    const-string v3, "so"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v2, 0xc7

    goto/16 :goto_0

    :sswitch_2b
    const-string v3, "sn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v2, 0xc6

    goto/16 :goto_0

    :sswitch_2c
    const-string v3, "sm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v2, 0xc5

    goto/16 :goto_0

    :sswitch_2d
    const-string v3, "sl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v2, 0xc4

    goto/16 :goto_0

    :sswitch_2e
    const-string v3, "sk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v2, 0xc3

    goto/16 :goto_0

    :sswitch_2f
    const-string v3, "si"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v2, 0xc2

    goto/16 :goto_0

    :sswitch_30
    const-string v3, "sh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v2, 0xc1

    goto/16 :goto_0

    :sswitch_31
    const-string v3, "sg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v2, 0xc0

    goto/16 :goto_0

    :sswitch_32
    const-string v3, "se"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v2, 0xbf

    goto/16 :goto_0

    :sswitch_33
    const-string v3, "sd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v2, 0xbe

    goto/16 :goto_0

    :sswitch_34
    const-string v3, "sc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v2, 0xbd

    goto/16 :goto_0

    :sswitch_35
    const-string v3, "sb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v2, 0xbc

    goto/16 :goto_0

    :sswitch_36
    const-string v3, "sa"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v2, 0xbb

    goto/16 :goto_0

    :sswitch_37
    const-string v3, "rw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v2, 0xba

    goto/16 :goto_0

    :sswitch_38
    const-string v3, "ru"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v2, 0xb9

    goto/16 :goto_0

    :sswitch_39
    const-string v3, "rs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v2, 0xb8

    goto/16 :goto_0

    :sswitch_3a
    const-string v3, "ro"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v2, 0xb7

    goto/16 :goto_0

    :sswitch_3b
    const-string v3, "re"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v2, 0xb6

    goto/16 :goto_0

    :sswitch_3c
    const-string v3, "qa"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v2, 0xb5

    goto/16 :goto_0

    :sswitch_3d
    const-string v3, "py"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_0

    :cond_3d
    const/16 v2, 0xb4

    goto/16 :goto_0

    :sswitch_3e
    const-string v3, "pw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_0

    :cond_3e
    const/16 v2, 0xb3

    goto/16 :goto_0

    :sswitch_3f
    const-string v3, "pt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_0

    :cond_3f
    const/16 v2, 0xb2

    goto/16 :goto_0

    :sswitch_40
    const-string v3, "ps"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_0

    :cond_40
    const/16 v2, 0xb1

    goto/16 :goto_0

    :sswitch_41
    const-string v3, "pr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_0

    :cond_41
    const/16 v2, 0xb0

    goto/16 :goto_0

    :sswitch_42
    const-string v3, "pn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_0

    :cond_42
    const/16 v2, 0xaf

    goto/16 :goto_0

    :sswitch_43
    const-string v3, "pm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_0

    :cond_43
    const/16 v2, 0xae

    goto/16 :goto_0

    :sswitch_44
    const-string v3, "pl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_0

    :cond_44
    const/16 v2, 0xad

    goto/16 :goto_0

    :sswitch_45
    const-string v3, "pk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_0

    :cond_45
    const/16 v2, 0xac

    goto/16 :goto_0

    :sswitch_46
    const-string v3, "ph"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_0

    :cond_46
    const/16 v2, 0xab

    goto/16 :goto_0

    :sswitch_47
    const-string v3, "pg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_0

    :cond_47
    const/16 v2, 0xaa

    goto/16 :goto_0

    :sswitch_48
    const-string v3, "pf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_0

    :cond_48
    const/16 v2, 0xa9

    goto/16 :goto_0

    :sswitch_49
    const-string v3, "pe"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_0

    :cond_49
    const/16 v2, 0xa8

    goto/16 :goto_0

    :sswitch_4a
    const-string v3, "pa"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_0

    :cond_4a
    const/16 v2, 0xa7

    goto/16 :goto_0

    :sswitch_4b
    const-string v3, "om"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_0

    :cond_4b
    const/16 v2, 0xa6

    goto/16 :goto_0

    :sswitch_4c
    const-string v3, "nz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_0

    :cond_4c
    const/16 v2, 0xa5

    goto/16 :goto_0

    :sswitch_4d
    const-string v3, "nu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_0

    :cond_4d
    const/16 v2, 0xa4

    goto/16 :goto_0

    :sswitch_4e
    const-string v3, "nr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_0

    :cond_4e
    const/16 v2, 0xa3

    goto/16 :goto_0

    :sswitch_4f
    const-string v3, "np"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_0

    :cond_4f
    const/16 v2, 0xa2

    goto/16 :goto_0

    :sswitch_50
    const-string v3, "no"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_0

    :cond_50
    const/16 v2, 0xa1

    goto/16 :goto_0

    :sswitch_51
    const-string v3, "nl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_0

    :cond_51
    const/16 v2, 0xa0

    goto/16 :goto_0

    :sswitch_52
    const-string v3, "ni"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_0

    :cond_52
    const/16 v2, 0x9f

    goto/16 :goto_0

    :sswitch_53
    const-string v3, "ng"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_0

    :cond_53
    const/16 v2, 0x9e

    goto/16 :goto_0

    :sswitch_54
    const-string v3, "nf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_0

    :cond_54
    const/16 v2, 0x9d

    goto/16 :goto_0

    :sswitch_55
    const-string v3, "ne"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_0

    :cond_55
    const/16 v2, 0x9c

    goto/16 :goto_0

    :sswitch_56
    const-string v3, "nc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_0

    :cond_56
    const/16 v2, 0x9b

    goto/16 :goto_0

    :sswitch_57
    const-string v3, "na"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_0

    :cond_57
    const/16 v2, 0x9a

    goto/16 :goto_0

    :sswitch_58
    const-string v3, "mz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_0

    :cond_58
    const/16 v2, 0x99

    goto/16 :goto_0

    :sswitch_59
    const-string v3, "my"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_0

    :cond_59
    const/16 v2, 0x98

    goto/16 :goto_0

    :sswitch_5a
    const-string v3, "mx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_0

    :cond_5a
    const/16 v2, 0x97

    goto/16 :goto_0

    :sswitch_5b
    const-string v3, "mw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_0

    :cond_5b
    const/16 v2, 0x96

    goto/16 :goto_0

    :sswitch_5c
    const-string v3, "mv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_0

    :cond_5c
    const/16 v2, 0x95

    goto/16 :goto_0

    :sswitch_5d
    const-string v3, "mu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_0

    :cond_5d
    const/16 v2, 0x94

    goto/16 :goto_0

    :sswitch_5e
    const-string v3, "mt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_0

    :cond_5e
    const/16 v2, 0x93

    goto/16 :goto_0

    :sswitch_5f
    const-string v3, "ms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_0

    :cond_5f
    const/16 v2, 0x92

    goto/16 :goto_0

    :sswitch_60
    const-string v3, "mr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_0

    :cond_60
    const/16 v2, 0x91

    goto/16 :goto_0

    :sswitch_61
    const-string v3, "mq"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_0

    :cond_61
    const/16 v2, 0x90

    goto/16 :goto_0

    :sswitch_62
    const-string v3, "mp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_0

    :cond_62
    const/16 v2, 0x8f

    goto/16 :goto_0

    :sswitch_63
    const-string v3, "mo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_0

    :cond_63
    const/16 v2, 0x8e

    goto/16 :goto_0

    :sswitch_64
    const-string v3, "mn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_0

    :cond_64
    const/16 v2, 0x8d

    goto/16 :goto_0

    :sswitch_65
    const-string v3, "mm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_0

    :cond_65
    const/16 v2, 0x8c

    goto/16 :goto_0

    :sswitch_66
    const-string v3, "ml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_0

    :cond_66
    const/16 v2, 0x8b

    goto/16 :goto_0

    :sswitch_67
    const-string v3, "mk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_0

    :cond_67
    const/16 v2, 0x8a

    goto/16 :goto_0

    :sswitch_68
    const-string v3, "mh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_0

    :cond_68
    const/16 v2, 0x89

    goto/16 :goto_0

    :sswitch_69
    const-string v3, "mg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_0

    :cond_69
    const/16 v2, 0x88

    goto/16 :goto_0

    :sswitch_6a
    const-string v3, "mf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto/16 :goto_0

    :cond_6a
    const/16 v2, 0x87

    goto/16 :goto_0

    :sswitch_6b
    const-string v3, "me"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_0

    :cond_6b
    const/16 v2, 0x86

    goto/16 :goto_0

    :sswitch_6c
    const-string v3, "md"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_0

    :cond_6c
    const/16 v2, 0x85

    goto/16 :goto_0

    :sswitch_6d
    const-string v3, "mc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_0

    :cond_6d
    const/16 v2, 0x84

    goto/16 :goto_0

    :sswitch_6e
    const-string v3, "ma"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto/16 :goto_0

    :cond_6e
    const/16 v2, 0x83

    goto/16 :goto_0

    :sswitch_6f
    const-string v3, "ly"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_0

    :cond_6f
    const/16 v2, 0x82

    goto/16 :goto_0

    :sswitch_70
    const-string v3, "lv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_0

    :cond_70
    const/16 v2, 0x81

    goto/16 :goto_0

    :sswitch_71
    const-string v3, "lu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_0

    :cond_71
    const/16 v2, 0x80

    goto/16 :goto_0

    :sswitch_72
    const-string v3, "lt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_0

    :cond_72
    const/16 v2, 0x7f

    goto/16 :goto_0

    :sswitch_73
    const-string v3, "ls"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto/16 :goto_0

    :cond_73
    const/16 v2, 0x7e

    goto/16 :goto_0

    :sswitch_74
    const-string v3, "lr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto/16 :goto_0

    :cond_74
    const/16 v2, 0x7d

    goto/16 :goto_0

    :sswitch_75
    const-string v3, "lk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto/16 :goto_0

    :cond_75
    const/16 v2, 0x7c

    goto/16 :goto_0

    :sswitch_76
    const-string v3, "li"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto/16 :goto_0

    :cond_76
    const/16 v2, 0x7b

    goto/16 :goto_0

    :sswitch_77
    const-string v3, "lc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_0

    :cond_77
    const/16 v2, 0x7a

    goto/16 :goto_0

    :sswitch_78
    const-string v3, "lb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto/16 :goto_0

    :cond_78
    const/16 v2, 0x79

    goto/16 :goto_0

    :sswitch_79
    const-string v3, "la"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_0

    :cond_79
    const/16 v2, 0x78

    goto/16 :goto_0

    :sswitch_7a
    const-string v3, "kz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_0

    :cond_7a
    const/16 v2, 0x77

    goto/16 :goto_0

    :sswitch_7b
    const-string v3, "ky"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_0

    :cond_7b
    const/16 v2, 0x76

    goto/16 :goto_0

    :sswitch_7c
    const-string v3, "kw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto/16 :goto_0

    :cond_7c
    const/16 v2, 0x75

    goto/16 :goto_0

    :sswitch_7d
    const-string v3, "kr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_0

    :cond_7d
    const/16 v2, 0x74

    goto/16 :goto_0

    :sswitch_7e
    const-string v3, "kp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_0

    :cond_7e
    const/16 v2, 0x73

    goto/16 :goto_0

    :sswitch_7f
    const-string v3, "kn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto/16 :goto_0

    :cond_7f
    const/16 v2, 0x72

    goto/16 :goto_0

    :sswitch_80
    const-string v3, "km"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_0

    :cond_80
    const/16 v2, 0x71

    goto/16 :goto_0

    :sswitch_81
    const-string v3, "ki"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto/16 :goto_0

    :cond_81
    const/16 v2, 0x70

    goto/16 :goto_0

    :sswitch_82
    const-string v3, "kh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto/16 :goto_0

    :cond_82
    const/16 v2, 0x6f

    goto/16 :goto_0

    :sswitch_83
    const-string v3, "kg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto/16 :goto_0

    :cond_83
    const/16 v2, 0x6e

    goto/16 :goto_0

    :sswitch_84
    const-string v3, "ke"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    goto/16 :goto_0

    :cond_84
    const/16 v2, 0x6d

    goto/16 :goto_0

    :sswitch_85
    const-string v3, "jp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto/16 :goto_0

    :cond_85
    const/16 v2, 0x6c

    goto/16 :goto_0

    :sswitch_86
    const-string v3, "jo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto/16 :goto_0

    :cond_86
    const/16 v2, 0x6b

    goto/16 :goto_0

    :sswitch_87
    const-string v3, "jm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto/16 :goto_0

    :cond_87
    const/16 v2, 0x6a

    goto/16 :goto_0

    :sswitch_88
    const-string v3, "je"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_0

    :cond_88
    const/16 v2, 0x69

    goto/16 :goto_0

    :sswitch_89
    const-string v3, "it"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_0

    :cond_89
    const/16 v2, 0x68

    goto/16 :goto_0

    :sswitch_8a
    const-string v3, "is"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto/16 :goto_0

    :cond_8a
    const/16 v2, 0x67

    goto/16 :goto_0

    :sswitch_8b
    const-string v3, "ir"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_0

    :cond_8b
    const/16 v2, 0x66

    goto/16 :goto_0

    :sswitch_8c
    const-string v3, "iq"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_0

    :cond_8c
    const/16 v2, 0x65

    goto/16 :goto_0

    :sswitch_8d
    const-string v3, "io"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto/16 :goto_0

    :cond_8d
    const/16 v2, 0x64

    goto/16 :goto_0

    :sswitch_8e
    const-string v3, "in"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_0

    :cond_8e
    const/16 v2, 0x63

    goto/16 :goto_0

    :sswitch_8f
    const-string v3, "im"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto/16 :goto_0

    :cond_8f
    const/16 v2, 0x62

    goto/16 :goto_0

    :sswitch_90
    const-string v3, "il"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto/16 :goto_0

    :cond_90
    const/16 v2, 0x61

    goto/16 :goto_0

    :sswitch_91
    const-string v3, "ie"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto/16 :goto_0

    :cond_91
    const/16 v2, 0x60

    goto/16 :goto_0

    :sswitch_92
    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto/16 :goto_0

    :cond_92
    const/16 v2, 0x5f

    goto/16 :goto_0

    :sswitch_93
    const-string v3, "hu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto/16 :goto_0

    :cond_93
    const/16 v2, 0x5e

    goto/16 :goto_0

    :sswitch_94
    const-string v3, "ht"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto/16 :goto_0

    :cond_94
    const/16 v2, 0x5d

    goto/16 :goto_0

    :sswitch_95
    const-string v3, "hr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto/16 :goto_0

    :cond_95
    const/16 v2, 0x5c

    goto/16 :goto_0

    :sswitch_96
    const-string v3, "hn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_0

    :cond_96
    const/16 v2, 0x5b

    goto/16 :goto_0

    :sswitch_97
    const-string v3, "hk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto/16 :goto_0

    :cond_97
    const/16 v2, 0x5a

    goto/16 :goto_0

    :sswitch_98
    const-string v3, "gy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto/16 :goto_0

    :cond_98
    const/16 v2, 0x59

    goto/16 :goto_0

    :sswitch_99
    const-string v3, "gw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto/16 :goto_0

    :cond_99
    const/16 v2, 0x58

    goto/16 :goto_0

    :sswitch_9a
    const-string v3, "gu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto/16 :goto_0

    :cond_9a
    const/16 v2, 0x57

    goto/16 :goto_0

    :sswitch_9b
    const-string v3, "gt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto/16 :goto_0

    :cond_9b
    const/16 v2, 0x56

    goto/16 :goto_0

    :sswitch_9c
    const-string v3, "gr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto/16 :goto_0

    :cond_9c
    const/16 v2, 0x55

    goto/16 :goto_0

    :sswitch_9d
    const-string v3, "gq"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto/16 :goto_0

    :cond_9d
    const/16 v2, 0x54

    goto/16 :goto_0

    :sswitch_9e
    const-string v3, "gp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto/16 :goto_0

    :cond_9e
    const/16 v2, 0x53

    goto/16 :goto_0

    :sswitch_9f
    const-string v3, "gn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto/16 :goto_0

    :cond_9f
    const/16 v2, 0x52

    goto/16 :goto_0

    :sswitch_a0
    const-string v3, "gm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    goto/16 :goto_0

    :cond_a0
    const/16 v2, 0x51

    goto/16 :goto_0

    :sswitch_a1
    const-string v3, "gl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto/16 :goto_0

    :cond_a1
    const/16 v2, 0x50

    goto/16 :goto_0

    :sswitch_a2
    const-string v3, "gi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    goto/16 :goto_0

    :cond_a2
    const/16 v2, 0x4f

    goto/16 :goto_0

    :sswitch_a3
    const-string v3, "gh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    goto/16 :goto_0

    :cond_a3
    const/16 v2, 0x4e

    goto/16 :goto_0

    :sswitch_a4
    const-string v3, "gg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    goto/16 :goto_0

    :cond_a4
    const/16 v2, 0x4d

    goto/16 :goto_0

    :sswitch_a5
    const-string v3, "gf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    goto/16 :goto_0

    :cond_a5
    const/16 v2, 0x4c

    goto/16 :goto_0

    :sswitch_a6
    const-string v3, "ge"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    goto/16 :goto_0

    :cond_a6
    const/16 v2, 0x4b

    goto/16 :goto_0

    :sswitch_a7
    const-string v3, "gd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    goto/16 :goto_0

    :cond_a7
    const/16 v2, 0x4a

    goto/16 :goto_0

    :sswitch_a8
    const-string v3, "gb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    goto/16 :goto_0

    :cond_a8
    const/16 v2, 0x49

    goto/16 :goto_0

    :sswitch_a9
    const-string v3, "ga"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    goto/16 :goto_0

    :cond_a9
    const/16 v2, 0x48

    goto/16 :goto_0

    :sswitch_aa
    const-string v3, "fr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    goto/16 :goto_0

    :cond_aa
    const/16 v2, 0x47

    goto/16 :goto_0

    :sswitch_ab
    const-string v3, "fo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    goto/16 :goto_0

    :cond_ab
    const/16 v2, 0x46

    goto/16 :goto_0

    :sswitch_ac
    const-string v3, "fm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    goto/16 :goto_0

    :cond_ac
    const/16 v2, 0x45

    goto/16 :goto_0

    :sswitch_ad
    const-string v3, "fk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    goto/16 :goto_0

    :cond_ad
    const/16 v2, 0x44

    goto/16 :goto_0

    :sswitch_ae
    const-string v3, "fj"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    goto/16 :goto_0

    :cond_ae
    const/16 v2, 0x43

    goto/16 :goto_0

    :sswitch_af
    const-string v3, "fi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    goto/16 :goto_0

    :cond_af
    const/16 v2, 0x42

    goto/16 :goto_0

    :sswitch_b0
    const-string v3, "et"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    goto/16 :goto_0

    :cond_b0
    const/16 v2, 0x41

    goto/16 :goto_0

    :sswitch_b1
    const-string v3, "es"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    goto/16 :goto_0

    :cond_b1
    const/16 v2, 0x40

    goto/16 :goto_0

    :sswitch_b2
    const-string v3, "er"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    goto/16 :goto_0

    :cond_b2
    const/16 v2, 0x3f

    goto/16 :goto_0

    :sswitch_b3
    const-string v3, "eg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    goto/16 :goto_0

    :cond_b3
    const/16 v2, 0x3e

    goto/16 :goto_0

    :sswitch_b4
    const-string v3, "ee"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    goto/16 :goto_0

    :cond_b4
    const/16 v2, 0x3d

    goto/16 :goto_0

    :sswitch_b5
    const-string v3, "ec"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    goto/16 :goto_0

    :cond_b5
    const/16 v2, 0x3c

    goto/16 :goto_0

    :sswitch_b6
    const-string v3, "dz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    goto/16 :goto_0

    :cond_b6
    const/16 v2, 0x3b

    goto/16 :goto_0

    :sswitch_b7
    const-string v3, "do"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    goto/16 :goto_0

    :cond_b7
    const/16 v2, 0x3a

    goto/16 :goto_0

    :sswitch_b8
    const-string v3, "dm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    goto/16 :goto_0

    :cond_b8
    const/16 v2, 0x39

    goto/16 :goto_0

    :sswitch_b9
    const-string v3, "dk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    goto/16 :goto_0

    :cond_b9
    const/16 v2, 0x38

    goto/16 :goto_0

    :sswitch_ba
    const-string v3, "dj"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    goto/16 :goto_0

    :cond_ba
    const/16 v2, 0x37

    goto/16 :goto_0

    :sswitch_bb
    const-string v3, "de"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    goto/16 :goto_0

    :cond_bb
    const/16 v2, 0x36

    goto/16 :goto_0

    :sswitch_bc
    const-string v3, "cz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    goto/16 :goto_0

    :cond_bc
    const/16 v2, 0x35

    goto/16 :goto_0

    :sswitch_bd
    const-string v3, "cy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    goto/16 :goto_0

    :cond_bd
    const/16 v2, 0x34

    goto/16 :goto_0

    :sswitch_be
    const-string v3, "cx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    goto/16 :goto_0

    :cond_be
    const/16 v2, 0x33

    goto/16 :goto_0

    :sswitch_bf
    const-string v3, "cw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    goto/16 :goto_0

    :cond_bf
    const/16 v2, 0x32

    goto/16 :goto_0

    :sswitch_c0
    const-string v3, "cv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    goto/16 :goto_0

    :cond_c0
    const/16 v2, 0x31

    goto/16 :goto_0

    :sswitch_c1
    const-string v3, "cu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    goto/16 :goto_0

    :cond_c1
    const/16 v2, 0x30

    goto/16 :goto_0

    :sswitch_c2
    const-string v3, "cr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c2

    goto/16 :goto_0

    :cond_c2
    const/16 v2, 0x2f

    goto/16 :goto_0

    :sswitch_c3
    const-string v3, "co"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    goto/16 :goto_0

    :cond_c3
    const/16 v2, 0x2e

    goto/16 :goto_0

    :sswitch_c4
    const-string v3, "cn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    goto/16 :goto_0

    :cond_c4
    const/16 v2, 0x2d

    goto/16 :goto_0

    :sswitch_c5
    const-string v3, "cm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    goto/16 :goto_0

    :cond_c5
    const/16 v2, 0x2c

    goto/16 :goto_0

    :sswitch_c6
    const-string v3, "cl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    goto/16 :goto_0

    :cond_c6
    const/16 v2, 0x2b

    goto/16 :goto_0

    :sswitch_c7
    const-string v3, "ck"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    goto/16 :goto_0

    :cond_c7
    const/16 v2, 0x2a

    goto/16 :goto_0

    :sswitch_c8
    const-string v3, "ci"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    goto/16 :goto_0

    :cond_c8
    const/16 v2, 0x29

    goto/16 :goto_0

    :sswitch_c9
    const-string v3, "ch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    goto/16 :goto_0

    :cond_c9
    const/16 v2, 0x28

    goto/16 :goto_0

    :sswitch_ca
    const-string v3, "cg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    goto/16 :goto_0

    :cond_ca
    const/16 v2, 0x27

    goto/16 :goto_0

    :sswitch_cb
    const-string v3, "cf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cb

    goto/16 :goto_0

    :cond_cb
    const/16 v2, 0x26

    goto/16 :goto_0

    :sswitch_cc
    const-string v3, "cd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cc

    goto/16 :goto_0

    :cond_cc
    const/16 v2, 0x25

    goto/16 :goto_0

    :sswitch_cd
    const-string v3, "cc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cd

    goto/16 :goto_0

    :cond_cd
    const/16 v2, 0x24

    goto/16 :goto_0

    :sswitch_ce
    const-string v3, "ca"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    goto/16 :goto_0

    :cond_ce
    const/16 v2, 0x23

    goto/16 :goto_0

    :sswitch_cf
    const-string v3, "bz"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    goto/16 :goto_0

    :cond_cf
    const/16 v2, 0x22

    goto/16 :goto_0

    :sswitch_d0
    const-string v3, "by"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    goto/16 :goto_0

    :cond_d0
    const/16 v2, 0x21

    goto/16 :goto_0

    :sswitch_d1
    const-string v3, "bw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    goto/16 :goto_0

    :cond_d1
    const/16 v2, 0x20

    goto/16 :goto_0

    :sswitch_d2
    const-string v3, "bt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    goto/16 :goto_0

    :cond_d2
    const/16 v2, 0x1f

    goto/16 :goto_0

    :sswitch_d3
    const-string v3, "bs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    goto/16 :goto_0

    :cond_d3
    const/16 v2, 0x1e

    goto/16 :goto_0

    :sswitch_d4
    const-string v3, "br"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    goto/16 :goto_0

    :cond_d4
    const/16 v2, 0x1d

    goto/16 :goto_0

    :sswitch_d5
    const-string v3, "bo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    goto/16 :goto_0

    :cond_d5
    const/16 v2, 0x1c

    goto/16 :goto_0

    :sswitch_d6
    const-string v3, "bn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    goto/16 :goto_0

    :cond_d6
    const/16 v2, 0x1b

    goto/16 :goto_0

    :sswitch_d7
    const-string v3, "bm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d7

    goto/16 :goto_0

    :cond_d7
    const/16 v2, 0x1a

    goto/16 :goto_0

    :sswitch_d8
    const-string v3, "bl"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d8

    goto/16 :goto_0

    :cond_d8
    const/16 v2, 0x19

    goto/16 :goto_0

    :sswitch_d9
    const-string v3, "bj"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    goto/16 :goto_0

    :cond_d9
    const/16 v2, 0x18

    goto/16 :goto_0

    :sswitch_da
    const-string v3, "bi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    goto/16 :goto_0

    :cond_da
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_db
    const-string v3, "bh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_db

    goto/16 :goto_0

    :cond_db
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_dc
    const-string v3, "bg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dc

    goto/16 :goto_0

    :cond_dc
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_dd
    const-string v3, "bf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dd

    goto/16 :goto_0

    :cond_dd
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_de
    const-string v3, "be"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_de

    goto/16 :goto_0

    :cond_de
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_df
    const-string v3, "bd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    goto/16 :goto_0

    :cond_df
    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_e0
    const-string v3, "bb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    goto/16 :goto_0

    :cond_e0
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_e1
    const-string v3, "ba"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    goto/16 :goto_0

    :cond_e1
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_e2
    const-string v3, "az"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e2

    goto/16 :goto_0

    :cond_e2
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_e3
    const-string v3, "ax"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e3

    goto/16 :goto_0

    :cond_e3
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_e4
    const-string v3, "aw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e4

    goto/16 :goto_0

    :cond_e4
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e5
    const-string v3, "au"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    goto/16 :goto_0

    :cond_e5
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_e6
    const-string v3, "at"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e6

    goto/16 :goto_0

    :cond_e6
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_e7
    const-string v3, "as"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e7

    goto/16 :goto_0

    :cond_e7
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_e8
    const-string v3, "ar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    goto/16 :goto_0

    :cond_e8
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_e9
    const-string v3, "aq"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e9

    goto/16 :goto_0

    :cond_e9
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_ea
    const-string v3, "ao"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    goto :goto_0

    :cond_ea
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_eb
    const-string v3, "am"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_eb

    goto :goto_0

    :cond_eb
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_ec
    const-string v3, "al"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    goto :goto_0

    :cond_ec
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_ed
    const-string v3, "ai"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    goto :goto_0

    :cond_ed
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_ee
    const-string v3, "ag"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ee

    goto :goto_0

    :cond_ee
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_ef
    const-string v3, "af"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ef

    goto :goto_0

    :cond_ef
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_f0
    const-string v3, "ae"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f0

    goto :goto_0

    :cond_f0
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_f1
    const-string v3, "ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f1

    goto :goto_0

    :cond_f1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const v1, 0x7f0802e8

    goto/16 :goto_1

    :pswitch_0
    const v1, 0x7f080322

    goto/16 :goto_1

    :pswitch_1
    const v1, 0x7f080320

    goto/16 :goto_1

    :pswitch_2
    const v1, 0x7f0802bd

    goto/16 :goto_1

    :pswitch_3
    const v1, 0x7f08031b

    goto/16 :goto_1

    :pswitch_4
    const v1, 0x7f0801e1

    goto/16 :goto_1

    :pswitch_5
    const v1, 0x7f08029d

    goto/16 :goto_1

    :pswitch_6
    const v1, 0x7f080316

    goto/16 :goto_1

    :pswitch_7
    const v1, 0x7f08030a

    goto/16 :goto_1

    :pswitch_8
    const v1, 0x7f080312

    goto/16 :goto_1

    :pswitch_9
    const v1, 0x7f080303

    goto/16 :goto_1

    :pswitch_a
    const v1, 0x7f080101

    goto/16 :goto_1

    :pswitch_b
    const v1, 0x7f08030f

    goto/16 :goto_1

    :pswitch_c
    const v1, 0x7f08029c

    goto/16 :goto_1

    :pswitch_d
    const v1, 0x7f08030b

    goto/16 :goto_1

    :pswitch_e
    const v1, 0x7f080308

    goto/16 :goto_1

    :pswitch_f
    const v1, 0x7f080301

    goto/16 :goto_1

    :pswitch_10
    const v1, 0x7f080300

    goto/16 :goto_1

    :pswitch_11
    const v1, 0x7f0802fb

    goto/16 :goto_1

    :pswitch_12
    const v1, 0x7f0802fd

    goto/16 :goto_1

    :pswitch_13
    const v1, 0x7f0802d4

    goto/16 :goto_1

    :pswitch_14
    const v1, 0x7f0802d2

    goto/16 :goto_1

    :pswitch_15
    const v1, 0x7f0802f1

    goto/16 :goto_1

    :pswitch_16
    const v1, 0x7f0802e9

    goto/16 :goto_1

    :pswitch_17
    const v1, 0x7f0802ee

    goto/16 :goto_1

    :pswitch_18
    const v1, 0x7f0802e6

    goto/16 :goto_1

    :pswitch_19
    const v1, 0x7f0802ed

    goto/16 :goto_1

    :pswitch_1a
    const v1, 0x7f0802ef

    goto/16 :goto_1

    :pswitch_1b
    const v1, 0x7f0802dd

    goto/16 :goto_1

    :pswitch_1c
    const v1, 0x7f0802e5

    goto/16 :goto_1

    :pswitch_1d
    const v1, 0x7f0802d3

    goto/16 :goto_1

    :pswitch_1e
    const v1, 0x7f0802da

    goto/16 :goto_1

    :pswitch_1f
    const v1, 0x7f0802e4

    goto/16 :goto_1

    :pswitch_20
    const v1, 0x7f08011f

    goto/16 :goto_1

    :pswitch_21
    const v1, 0x7f0802f0

    goto/16 :goto_1

    :pswitch_22
    const v1, 0x7f0802cb

    goto/16 :goto_1

    :pswitch_23
    const v1, 0x7f0802d0

    goto/16 :goto_1

    :pswitch_24
    const v1, 0x7f0802b1

    goto/16 :goto_1

    :pswitch_25
    const v1, 0x7f080159

    goto/16 :goto_1

    :pswitch_26
    const v1, 0x7f08029f

    goto/16 :goto_1

    :pswitch_27
    const v1, 0x7f0802c0

    goto/16 :goto_1

    :pswitch_28
    const v1, 0x7f0802c9

    goto/16 :goto_1

    :pswitch_29
    const v1, 0x7f0802bb

    goto/16 :goto_1

    :pswitch_2a
    const v1, 0x7f0802a7

    goto/16 :goto_1

    :pswitch_2b
    const v1, 0x7f08029e

    goto/16 :goto_1

    :pswitch_2c
    const v1, 0x7f0802af

    goto/16 :goto_1

    :pswitch_2d
    const v1, 0x7f0802b5

    goto/16 :goto_1

    :pswitch_2e
    const v1, 0x7f0802b6

    goto/16 :goto_1

    :pswitch_2f
    const v1, 0x7f080297

    goto/16 :goto_1

    :pswitch_30
    const v1, 0x7f0802b0

    goto/16 :goto_1

    :pswitch_31
    const v1, 0x7f0802cc

    goto/16 :goto_1

    :pswitch_32
    const v1, 0x7f0802c8

    goto/16 :goto_1

    :pswitch_33
    const v1, 0x7f0802aa

    goto/16 :goto_1

    :pswitch_34
    const v1, 0x7f0802ba

    goto/16 :goto_1

    :pswitch_35
    const v1, 0x7f0802a1

    goto/16 :goto_1

    :pswitch_36
    const v1, 0x7f080294

    goto/16 :goto_1

    :pswitch_37
    const v1, 0x7f080292

    goto/16 :goto_1

    :pswitch_38
    const v1, 0x7f0802a8

    goto/16 :goto_1

    :pswitch_39
    const v1, 0x7f08028c

    goto/16 :goto_1

    :pswitch_3a
    const v1, 0x7f080288

    goto/16 :goto_1

    :pswitch_3b
    const v1, 0x7f08026c

    goto/16 :goto_1

    :pswitch_3c
    const v1, 0x7f080268

    goto/16 :goto_1

    :pswitch_3d
    const v1, 0x7f08027e

    goto/16 :goto_1

    :pswitch_3e
    const v1, 0x7f080269

    goto/16 :goto_1

    :pswitch_3f
    const v1, 0x7f080282

    goto/16 :goto_1

    :pswitch_40
    const v1, 0x7f080276

    goto/16 :goto_1

    :pswitch_41
    const v1, 0x7f08029b

    goto/16 :goto_1

    :pswitch_42
    const v1, 0x7f08027d

    goto/16 :goto_1

    :pswitch_43
    const v1, 0x7f080267

    goto/16 :goto_1

    :pswitch_44
    const v1, 0x7f080274

    goto/16 :goto_1

    :pswitch_45
    const v1, 0x7f08026b

    goto/16 :goto_1

    :pswitch_46
    const v1, 0x7f080171

    goto/16 :goto_1

    :pswitch_47
    const v1, 0x7f08026f

    goto/16 :goto_1

    :pswitch_48
    const v1, 0x7f08026a

    goto/16 :goto_1

    :pswitch_49
    const v1, 0x7f080264

    goto/16 :goto_1

    :pswitch_4a
    const v1, 0x7f08024b

    goto/16 :goto_1

    :pswitch_4b
    const v1, 0x7f080254

    goto/16 :goto_1

    :pswitch_4c
    const v1, 0x7f080244

    goto/16 :goto_1

    :pswitch_4d
    const v1, 0x7f080247

    goto/16 :goto_1

    :pswitch_4e
    const v1, 0x7f08025b

    goto/16 :goto_1

    :pswitch_4f
    const v1, 0x7f080248

    goto/16 :goto_1

    :pswitch_50
    const v1, 0x7f080250

    goto/16 :goto_1

    :pswitch_51
    const v1, 0x7f080252

    goto/16 :goto_1

    :pswitch_52
    const v1, 0x7f080258

    goto/16 :goto_1

    :pswitch_53
    const v1, 0x7f080251

    goto/16 :goto_1

    :pswitch_54
    const v1, 0x7f08024a

    goto/16 :goto_1

    :pswitch_55
    const v1, 0x7f080243

    goto/16 :goto_1

    :pswitch_56
    const v1, 0x7f08022d

    goto/16 :goto_1

    :pswitch_57
    const v1, 0x7f08020d

    goto/16 :goto_1

    :pswitch_58
    const v1, 0x7f080219

    goto/16 :goto_1

    :pswitch_59
    const v1, 0x7f08020c

    goto/16 :goto_1

    :pswitch_5a
    const v1, 0x7f08020e

    goto/16 :goto_1

    :pswitch_5b
    const v1, 0x7f080214

    goto/16 :goto_1

    :pswitch_5c
    const v1, 0x7f080210

    goto/16 :goto_1

    :pswitch_5d
    const v1, 0x7f08022a

    goto/16 :goto_1

    :pswitch_5e
    const v1, 0x7f080213

    goto/16 :goto_1

    :pswitch_5f
    const v1, 0x7f08025a

    goto/16 :goto_1

    :pswitch_60
    const v1, 0x7f080208

    goto/16 :goto_1

    :pswitch_61
    const v1, 0x7f080229

    goto/16 :goto_1

    :pswitch_62
    const v1, 0x7f08023d

    goto/16 :goto_1

    :pswitch_63
    const v1, 0x7f08020f

    goto/16 :goto_1

    :pswitch_64
    const v1, 0x7f080209

    goto/16 :goto_1

    :pswitch_65
    const v1, 0x7f080211

    goto/16 :goto_1

    :pswitch_66
    const v1, 0x7f08020b

    goto/16 :goto_1

    :pswitch_67
    const v1, 0x7f08029a

    goto/16 :goto_1

    :pswitch_68
    const v1, 0x7f080262

    goto/16 :goto_1

    :pswitch_69
    const v1, 0x7f080227

    goto/16 :goto_1

    :pswitch_6a
    const v1, 0x7f080228

    goto/16 :goto_1

    :pswitch_6b
    const v1, 0x7f08022c

    goto/16 :goto_1

    :pswitch_6c
    const v1, 0x7f0801f8

    goto/16 :goto_1

    :pswitch_6d
    const v1, 0x7f0801f0

    goto/16 :goto_1

    :pswitch_6e
    const v1, 0x7f080203

    goto/16 :goto_1

    :pswitch_6f
    const v1, 0x7f0801fa

    goto/16 :goto_1

    :pswitch_70
    const v1, 0x7f0801f5

    goto/16 :goto_1

    :pswitch_71
    const v1, 0x7f0801f7

    goto/16 :goto_1

    :pswitch_72
    const v1, 0x7f0802c5

    goto/16 :goto_1

    :pswitch_73
    const v1, 0x7f0801f9

    goto/16 :goto_1

    :pswitch_74
    const v1, 0x7f080299

    goto/16 :goto_1

    :pswitch_75
    const v1, 0x7f0801f4

    goto/16 :goto_1

    :pswitch_76
    const v1, 0x7f0801ef

    goto/16 :goto_1

    :pswitch_77
    const v1, 0x7f0801d4

    goto/16 :goto_1

    :pswitch_78
    const v1, 0x7f080117

    goto/16 :goto_1

    :pswitch_79
    const v1, 0x7f0801e5

    goto/16 :goto_1

    :pswitch_7a
    const v1, 0x7f0802bf

    goto/16 :goto_1

    :pswitch_7b
    const v1, 0x7f080259

    goto/16 :goto_1

    :pswitch_7c
    const v1, 0x7f080298

    goto/16 :goto_1

    :pswitch_7d
    const v1, 0x7f08012e

    goto/16 :goto_1

    :pswitch_7e
    const v1, 0x7f0801dd

    goto/16 :goto_1

    :pswitch_7f
    const v1, 0x7f080113

    goto/16 :goto_1

    :pswitch_80
    const v1, 0x7f0801ea

    goto/16 :goto_1

    :pswitch_81
    const v1, 0x7f0801d6

    goto/16 :goto_1

    :pswitch_82
    const v1, 0x7f0801ca

    goto/16 :goto_1

    :pswitch_83
    const v1, 0x7f0801d1

    goto/16 :goto_1

    :pswitch_84
    const v1, 0x7f0801c9

    goto/16 :goto_1

    :pswitch_85
    const v1, 0x7f0801cc

    goto/16 :goto_1

    :pswitch_86
    const v1, 0x7f0801c8

    goto/16 :goto_1

    :pswitch_87
    const v1, 0x7f0801af

    goto/16 :goto_1

    :pswitch_88
    const v1, 0x7f0801be

    goto/16 :goto_1

    :pswitch_89
    const v1, 0x7f0801c0

    goto/16 :goto_1

    :pswitch_8a
    const v1, 0x7f080100

    goto/16 :goto_1

    :pswitch_8b
    const v1, 0x7f0801b7

    goto/16 :goto_1

    :pswitch_8c
    const v1, 0x7f0801c5

    goto/16 :goto_1

    :pswitch_8d
    const v1, 0x7f0801c6

    goto/16 :goto_1

    :pswitch_8e
    const v1, 0x7f0801c1

    goto/16 :goto_1

    :pswitch_8f
    const v1, 0x7f0801b8

    goto/16 :goto_1

    :pswitch_90
    const v1, 0x7f0801ae

    goto/16 :goto_1

    :pswitch_91
    const v1, 0x7f0801a0

    goto/16 :goto_1

    :pswitch_92
    const v1, 0x7f080135

    goto/16 :goto_1

    :pswitch_93
    const v1, 0x7f0801a6

    goto/16 :goto_1

    :pswitch_94
    const v1, 0x7f0801a7

    goto/16 :goto_1

    :pswitch_95
    const v1, 0x7f08019b

    goto/16 :goto_1

    :pswitch_96
    const v1, 0x7f08019a

    goto/16 :goto_1

    :pswitch_97
    const v1, 0x7f080196

    goto/16 :goto_1

    :pswitch_98
    const v1, 0x7f080197

    goto/16 :goto_1

    :pswitch_99
    const v1, 0x7f08018e

    goto/16 :goto_1

    :pswitch_9a
    const v1, 0x7f08015a

    goto/16 :goto_1

    :pswitch_9b
    const v1, 0x7f080195

    goto/16 :goto_1

    :pswitch_9c
    const v1, 0x7f080199

    goto/16 :goto_1

    :pswitch_9d
    const v1, 0x7f080176

    goto/16 :goto_1

    :pswitch_9e
    const v1, 0x7f08018f

    goto/16 :goto_1

    :pswitch_9f
    const v1, 0x7f080184

    goto/16 :goto_1

    :pswitch_a0
    const v1, 0x7f080181

    goto/16 :goto_1

    :pswitch_a1
    const v1, 0x7f080198

    goto/16 :goto_1

    :pswitch_a2
    const v1, 0x7f08019c

    goto/16 :goto_1

    :pswitch_a3
    const v1, 0x7f08017c

    goto/16 :goto_1

    :pswitch_a4
    const v1, 0x7f080190

    goto/16 :goto_1

    :pswitch_a5
    const v1, 0x7f0802ff

    goto/16 :goto_1

    :pswitch_a6
    const v1, 0x7f080175

    goto/16 :goto_1

    :pswitch_a7
    const v1, 0x7f080170

    goto/16 :goto_1

    :pswitch_a8
    const v1, 0x7f080165

    goto/16 :goto_1

    :pswitch_a9
    const v1, 0x7f08021e

    goto/16 :goto_1

    :pswitch_aa
    const v1, 0x7f080164

    goto/16 :goto_1

    :pswitch_ab
    const v1, 0x7f080167

    goto/16 :goto_1

    :pswitch_ac
    const v1, 0x7f080168

    goto/16 :goto_1

    :pswitch_ad
    const v1, 0x7f080162

    goto/16 :goto_1

    :pswitch_ae
    const v1, 0x7f0802c2

    goto/16 :goto_1

    :pswitch_af
    const v1, 0x7f08015c

    goto/16 :goto_1

    :pswitch_b0
    const v1, 0x7f080157

    goto/16 :goto_1

    :pswitch_b1
    const v1, 0x7f08015f

    goto/16 :goto_1

    :pswitch_b2
    const v1, 0x7f080153

    goto/16 :goto_1

    :pswitch_b3
    const v1, 0x7f0800bb

    goto/16 :goto_1

    :pswitch_b4
    const v1, 0x7f08014e

    goto/16 :goto_1

    :pswitch_b5
    const v1, 0x7f08014d

    goto/16 :goto_1

    :pswitch_b6
    const v1, 0x7f080145

    goto/16 :goto_1

    :pswitch_b7
    const v1, 0x7f080148

    goto/16 :goto_1

    :pswitch_b8
    const v1, 0x7f08017d

    goto/16 :goto_1

    :pswitch_b9
    const v1, 0x7f080141

    goto/16 :goto_1

    :pswitch_ba
    const v1, 0x7f08013f

    goto/16 :goto_1

    :pswitch_bb
    const v1, 0x7f080123

    goto/16 :goto_1

    :pswitch_bc
    const v1, 0x7f080139

    goto/16 :goto_1

    :pswitch_bd
    const v1, 0x7f080116

    goto/16 :goto_1

    :pswitch_be
    const v1, 0x7f080137

    goto/16 :goto_1

    :pswitch_bf
    const v1, 0x7f080131

    goto/16 :goto_1

    :pswitch_c0
    const v1, 0x7f08012d

    goto/16 :goto_1

    :pswitch_c1
    const v1, 0x7f080122

    goto/16 :goto_1

    :pswitch_c2
    const v1, 0x7f080114

    goto/16 :goto_1

    :pswitch_c3
    const v1, 0x7f080121

    goto/16 :goto_1

    :pswitch_c4
    const v1, 0x7f08012f

    goto/16 :goto_1

    :pswitch_c5
    const v1, 0x7f080132

    goto/16 :goto_1

    :pswitch_c6
    const v1, 0x7f0802cd

    goto/16 :goto_1

    :pswitch_c7
    const v1, 0x7f08028a

    goto/16 :goto_1

    :pswitch_c8
    const v1, 0x7f08011b

    goto/16 :goto_1

    :pswitch_c9
    const v1, 0x7f080144

    goto/16 :goto_1

    :pswitch_ca
    const v1, 0x7f08012c

    goto/16 :goto_1

    :pswitch_cb
    const v1, 0x7f080115

    goto/16 :goto_1

    :pswitch_cc
    const v1, 0x7f0800e7

    goto/16 :goto_1

    :pswitch_cd
    const v1, 0x7f0800e5

    goto/16 :goto_1

    :pswitch_ce
    const v1, 0x7f0800fc

    goto/16 :goto_1

    :pswitch_cf
    const v1, 0x7f0800ef

    goto/16 :goto_1

    :pswitch_d0
    const v1, 0x7f0800db

    goto/16 :goto_1

    :pswitch_d1
    const v1, 0x7f0800ff

    goto/16 :goto_1

    :pswitch_d2
    const v1, 0x7f0800fa

    goto/16 :goto_1

    :pswitch_d3
    const v1, 0x7f080103

    goto/16 :goto_1

    :pswitch_d4
    const v1, 0x7f0800e9

    goto/16 :goto_1

    :pswitch_d5
    const v1, 0x7f080296

    goto/16 :goto_1

    :pswitch_d6
    const v1, 0x7f0800e8

    goto/16 :goto_1

    :pswitch_d7
    const v1, 0x7f08010a

    goto/16 :goto_1

    :pswitch_d8
    const v1, 0x7f0800dc

    goto/16 :goto_1

    :pswitch_d9
    const v1, 0x7f080108

    goto :goto_1

    :pswitch_da
    const v1, 0x7f080109

    goto :goto_1

    :pswitch_db
    const v1, 0x7f0800e6

    goto :goto_1

    :pswitch_dc
    const v1, 0x7f0800de

    goto :goto_1

    :pswitch_dd
    const v1, 0x7f0800df

    goto :goto_1

    :pswitch_de
    const v1, 0x7f0800fb

    goto :goto_1

    :pswitch_df
    const v1, 0x7f0800d8

    goto :goto_1

    :pswitch_e0
    const v1, 0x7f0800b9

    goto :goto_1

    :pswitch_e1
    const v1, 0x7f0800cd

    goto :goto_1

    :pswitch_e2
    const v1, 0x7f0800d2

    goto :goto_1

    :pswitch_e3
    const v1, 0x7f0800d3

    goto :goto_1

    :pswitch_e4
    const v1, 0x7f0800bf

    goto :goto_1

    :pswitch_e5
    const v1, 0x7f0800ca

    goto :goto_1

    :pswitch_e6
    const v1, 0x7f0800c4

    goto :goto_1

    :pswitch_e7
    const v1, 0x7f0800c2

    goto :goto_1

    :pswitch_e8
    const v1, 0x7f0800cb

    goto :goto_1

    :pswitch_e9
    const v1, 0x7f0800ba

    goto :goto_1

    :pswitch_ea
    const v1, 0x7f0800c3

    goto :goto_1

    :pswitch_eb
    const v1, 0x7f0800c5

    goto :goto_1

    :pswitch_ec
    const v1, 0x7f0800b4

    goto :goto_1

    :pswitch_ed
    const v1, 0x7f0802f8

    goto :goto_1

    :pswitch_ee
    const v1, 0x7f0800c1

    :goto_1
    :pswitch_ef
    iput v1, p0, Lc3/a;->e:I

    :cond_f2
    iget v0, p0, Lc3/a;->e:I

    return v0

    :sswitch_data_0
    .sparse-switch
        0xc23 -> :sswitch_f1
        0xc24 -> :sswitch_f0
        0xc25 -> :sswitch_ef
        0xc26 -> :sswitch_ee
        0xc28 -> :sswitch_ed
        0xc2b -> :sswitch_ec
        0xc2c -> :sswitch_eb
        0xc2e -> :sswitch_ea
        0xc30 -> :sswitch_e9
        0xc31 -> :sswitch_e8
        0xc32 -> :sswitch_e7
        0xc33 -> :sswitch_e6
        0xc34 -> :sswitch_e5
        0xc36 -> :sswitch_e4
        0xc37 -> :sswitch_e3
        0xc39 -> :sswitch_e2
        0xc3f -> :sswitch_e1
        0xc40 -> :sswitch_e0
        0xc42 -> :sswitch_df
        0xc43 -> :sswitch_de
        0xc44 -> :sswitch_dd
        0xc45 -> :sswitch_dc
        0xc46 -> :sswitch_db
        0xc47 -> :sswitch_da
        0xc48 -> :sswitch_d9
        0xc4a -> :sswitch_d8
        0xc4b -> :sswitch_d7
        0xc4c -> :sswitch_d6
        0xc4d -> :sswitch_d5
        0xc50 -> :sswitch_d4
        0xc51 -> :sswitch_d3
        0xc52 -> :sswitch_d2
        0xc55 -> :sswitch_d1
        0xc57 -> :sswitch_d0
        0xc58 -> :sswitch_cf
        0xc5e -> :sswitch_ce
        0xc60 -> :sswitch_cd
        0xc61 -> :sswitch_cc
        0xc63 -> :sswitch_cb
        0xc64 -> :sswitch_ca
        0xc65 -> :sswitch_c9
        0xc66 -> :sswitch_c8
        0xc68 -> :sswitch_c7
        0xc69 -> :sswitch_c6
        0xc6a -> :sswitch_c5
        0xc6b -> :sswitch_c4
        0xc6c -> :sswitch_c3
        0xc6f -> :sswitch_c2
        0xc72 -> :sswitch_c1
        0xc73 -> :sswitch_c0
        0xc74 -> :sswitch_bf
        0xc75 -> :sswitch_be
        0xc76 -> :sswitch_bd
        0xc77 -> :sswitch_bc
        0xc81 -> :sswitch_bb
        0xc86 -> :sswitch_ba
        0xc87 -> :sswitch_b9
        0xc89 -> :sswitch_b8
        0xc8b -> :sswitch_b7
        0xc96 -> :sswitch_b6
        0xc9e -> :sswitch_b5
        0xca0 -> :sswitch_b4
        0xca2 -> :sswitch_b3
        0xcad -> :sswitch_b2
        0xcae -> :sswitch_b1
        0xcaf -> :sswitch_b0
        0xcc3 -> :sswitch_af
        0xcc4 -> :sswitch_ae
        0xcc5 -> :sswitch_ad
        0xcc7 -> :sswitch_ac
        0xcc9 -> :sswitch_ab
        0xccc -> :sswitch_aa
        0xcda -> :sswitch_a9
        0xcdb -> :sswitch_a8
        0xcdd -> :sswitch_a7
        0xcde -> :sswitch_a6
        0xcdf -> :sswitch_a5
        0xce0 -> :sswitch_a4
        0xce1 -> :sswitch_a3
        0xce2 -> :sswitch_a2
        0xce5 -> :sswitch_a1
        0xce6 -> :sswitch_a0
        0xce7 -> :sswitch_9f
        0xce9 -> :sswitch_9e
        0xcea -> :sswitch_9d
        0xceb -> :sswitch_9c
        0xced -> :sswitch_9b
        0xcee -> :sswitch_9a
        0xcf0 -> :sswitch_99
        0xcf2 -> :sswitch_98
        0xd03 -> :sswitch_97
        0xd06 -> :sswitch_96
        0xd0a -> :sswitch_95
        0xd0c -> :sswitch_94
        0xd0d -> :sswitch_93
        0xd1b -> :sswitch_92
        0xd1c -> :sswitch_91
        0xd23 -> :sswitch_90
        0xd24 -> :sswitch_8f
        0xd25 -> :sswitch_8e
        0xd26 -> :sswitch_8d
        0xd28 -> :sswitch_8c
        0xd29 -> :sswitch_8b
        0xd2a -> :sswitch_8a
        0xd2b -> :sswitch_89
        0xd3b -> :sswitch_88
        0xd43 -> :sswitch_87
        0xd45 -> :sswitch_86
        0xd46 -> :sswitch_85
        0xd5a -> :sswitch_84
        0xd5c -> :sswitch_83
        0xd5d -> :sswitch_82
        0xd5e -> :sswitch_81
        0xd62 -> :sswitch_80
        0xd63 -> :sswitch_7f
        0xd65 -> :sswitch_7e
        0xd67 -> :sswitch_7d
        0xd6c -> :sswitch_7c
        0xd6e -> :sswitch_7b
        0xd6f -> :sswitch_7a
        0xd75 -> :sswitch_79
        0xd76 -> :sswitch_78
        0xd77 -> :sswitch_77
        0xd7d -> :sswitch_76
        0xd7f -> :sswitch_75
        0xd86 -> :sswitch_74
        0xd87 -> :sswitch_73
        0xd88 -> :sswitch_72
        0xd89 -> :sswitch_71
        0xd8a -> :sswitch_70
        0xd8d -> :sswitch_6f
        0xd94 -> :sswitch_6e
        0xd96 -> :sswitch_6d
        0xd97 -> :sswitch_6c
        0xd98 -> :sswitch_6b
        0xd99 -> :sswitch_6a
        0xd9a -> :sswitch_69
        0xd9b -> :sswitch_68
        0xd9e -> :sswitch_67
        0xd9f -> :sswitch_66
        0xda0 -> :sswitch_65
        0xda1 -> :sswitch_64
        0xda2 -> :sswitch_63
        0xda3 -> :sswitch_62
        0xda4 -> :sswitch_61
        0xda5 -> :sswitch_60
        0xda6 -> :sswitch_5f
        0xda7 -> :sswitch_5e
        0xda8 -> :sswitch_5d
        0xda9 -> :sswitch_5c
        0xdaa -> :sswitch_5b
        0xdab -> :sswitch_5a
        0xdac -> :sswitch_59
        0xdad -> :sswitch_58
        0xdb3 -> :sswitch_57
        0xdb5 -> :sswitch_56
        0xdb7 -> :sswitch_55
        0xdb8 -> :sswitch_54
        0xdb9 -> :sswitch_53
        0xdbb -> :sswitch_52
        0xdbe -> :sswitch_51
        0xdc1 -> :sswitch_50
        0xdc2 -> :sswitch_4f
        0xdc4 -> :sswitch_4e
        0xdc7 -> :sswitch_4d
        0xdcc -> :sswitch_4c
        0xdde -> :sswitch_4b
        0xdf1 -> :sswitch_4a
        0xdf5 -> :sswitch_49
        0xdf6 -> :sswitch_48
        0xdf7 -> :sswitch_47
        0xdf8 -> :sswitch_46
        0xdfb -> :sswitch_45
        0xdfc -> :sswitch_44
        0xdfd -> :sswitch_43
        0xdfe -> :sswitch_42
        0xe02 -> :sswitch_41
        0xe03 -> :sswitch_40
        0xe04 -> :sswitch_3f
        0xe07 -> :sswitch_3e
        0xe09 -> :sswitch_3d
        0xe10 -> :sswitch_3c
        0xe33 -> :sswitch_3b
        0xe3d -> :sswitch_3a
        0xe41 -> :sswitch_39
        0xe43 -> :sswitch_38
        0xe45 -> :sswitch_37
        0xe4e -> :sswitch_36
        0xe4f -> :sswitch_35
        0xe50 -> :sswitch_34
        0xe51 -> :sswitch_33
        0xe52 -> :sswitch_32
        0xe54 -> :sswitch_31
        0xe55 -> :sswitch_30
        0xe56 -> :sswitch_2f
        0xe58 -> :sswitch_2e
        0xe59 -> :sswitch_2d
        0xe5a -> :sswitch_2c
        0xe5b -> :sswitch_2b
        0xe5c -> :sswitch_2a
        0xe5f -> :sswitch_29
        0xe60 -> :sswitch_28
        0xe61 -> :sswitch_27
        0xe63 -> :sswitch_26
        0xe65 -> :sswitch_25
        0xe66 -> :sswitch_24
        0xe67 -> :sswitch_23
        0xe6f -> :sswitch_22
        0xe70 -> :sswitch_21
        0xe73 -> :sswitch_20
        0xe74 -> :sswitch_1f
        0xe76 -> :sswitch_1e
        0xe77 -> :sswitch_1d
        0xe78 -> :sswitch_1c
        0xe79 -> :sswitch_1b
        0xe7a -> :sswitch_1a
        0xe7b -> :sswitch_19
        0xe7e -> :sswitch_18
        0xe80 -> :sswitch_17
        0xe82 -> :sswitch_16
        0xe83 -> :sswitch_15
        0xe86 -> :sswitch_14
        0xe8c -> :sswitch_13
        0xe92 -> :sswitch_12
        0xe9e -> :sswitch_11
        0xea4 -> :sswitch_10
        0xea5 -> :sswitch_f
        0xeab -> :sswitch_e
        0xead -> :sswitch_d
        0xeaf -> :sswitch_c
        0xeb1 -> :sswitch_b
        0xeb3 -> :sswitch_a
        0xeb8 -> :sswitch_9
        0xebf -> :sswitch_8
        0xecf -> :sswitch_7
        0xedc -> :sswitch_6
        0xef3 -> :sswitch_5
        0xf0c -> :sswitch_4
        0xf1b -> :sswitch_3
        0xf27 -> :sswitch_2
        0xf33 -> :sswitch_1
        0xf3d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_ef
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_ef
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_ef
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lc3/a;->c:Ljava/lang/String;

    const-string v1, "Name"

    invoke-static {v1, v0, p1}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc3/a;->a:Ljava/lang/String;

    const-string v1, "NameCode"

    invoke-static {v1, v0, p1}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc3/a;->b:Ljava/lang/String;

    const-string v1, "PhoneCode"

    invoke-static {v1, v0, p1}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc3/a;->d:Ljava/lang/String;

    const-string v1, "EnglishName"

    invoke-static {v1, v0, p1}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final m()V
    .locals 4

    const-string v0, ":"

    const-string v1, "Class Country"

    const-string v2, "Country->"

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lc3/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc3/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc3/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
