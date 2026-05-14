.class public final LY3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final b:LY3/c;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LY3/c;

    invoke-direct {v0}, LY3/c;-><init>()V

    sput-object v0, LY3/c;->b:LY3/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lp4/c;

    const/4 v1, 0x0

    const/16 v2, 0xff

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lp4/a;-><init>(III)V

    invoke-virtual {v0, v3}, Lp4/c;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lp4/c;

    invoke-direct {v0, v1, v2, v3}, Lp4/a;-><init>(III)V

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lp4/c;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lp4/c;

    invoke-direct {v0, v1, v2, v3}, Lp4/a;-><init>(III)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lp4/c;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1080a

    iput v0, p0, LY3/c;->a:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version components are out of range: 1.8.10"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LY3/c;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, LY3/c;->a:I

    iget p1, p1, LY3/c;->a:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LY3/c;

    if-eqz v1, :cond_1

    check-cast p1, LY3/c;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget v2, p0, LY3/c;->a:I

    iget p1, p1, LY3/c;->a:I

    if-ne v2, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, LY3/c;->a:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "1.8.10"

    return-object v0
.end method
