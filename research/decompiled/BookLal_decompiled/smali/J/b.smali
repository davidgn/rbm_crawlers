.class public final synthetic LJ/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LJ/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x1

    iget v1, p0, LJ/b;->a:I

    packed-switch v1, :pswitch_data_0

    check-cast p1, LY2/e;

    check-cast p2, LY2/e;

    invoke-static {p1, p2}, Lcom/google/firebase/inappmessaging/internal/InAppMessageStreamManager;->u(LY2/e;LY2/e;)I

    move-result p1

    return p1

    :pswitch_0
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1, p2}, Lcom/google/firebase/firestore/util/Util;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1

    :pswitch_2
    check-cast p1, Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    check-cast p2, Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;

    invoke-static {p1, p2}, Lcom/google/firebase/firestore/util/AsyncQueue;->a(Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;Lcom/google/firebase/firestore/util/AsyncQueue$DelayedTask;)I

    move-result p1

    return p1

    :pswitch_3
    check-cast p1, Lcom/google/firebase/firestore/model/MutableDocument;

    check-cast p2, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-static {p1, p2}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->a(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/MutableDocument;)I

    move-result p1

    return p1

    :pswitch_4
    check-cast p1, Lcom/google/firebase/firestore/model/FieldIndex;

    check-cast p2, Lcom/google/firebase/firestore/model/FieldIndex;

    invoke-static {p1, p2}, Lcom/google/firebase/firestore/model/FieldIndex;->a(Lcom/google/firebase/firestore/model/FieldIndex;Lcom/google/firebase/firestore/model/FieldIndex;)I

    move-result p1

    return p1

    :pswitch_5
    check-cast p1, Lcom/google/firebase/firestore/model/DocumentKey;

    check-cast p2, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/model/DocumentKey;->compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result p1

    return p1

    :pswitch_6
    check-cast p1, Lcom/google/firebase/firestore/model/Document;

    check-cast p2, Lcom/google/firebase/firestore/model/Document;

    invoke-static {p1, p2}, Lcom/google/firebase/firestore/model/Document;->a(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)I

    move-result p1

    return p1

    :pswitch_7
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    sget v1, Lcom/booklal/booklal/SearchPage;->K:I

    const-string v1, "\\d+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int v0, p2, p1

    :goto_0
    return v0

    :pswitch_8
    check-cast p1, [B

    check-cast p2, [B

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_2

    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_4

    aget-byte v3, p1, v2

    aget-byte v4, p2, v2

    if-eq v3, v4, :cond_3

    sub-int p1, v3, v4

    goto :goto_2

    :cond_3
    add-int/2addr v2, v0

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_2
    return p1

    :pswitch_data_0
    .packed-switch 0x0
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
