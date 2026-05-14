.class public final Lx0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx0/c;->a:I

    iput p2, p0, Lx0/c;->b:I

    iput-object p3, p0, Lx0/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lx0/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lx0/c;

    iget v0, p1, Lx0/c;->a:I

    iget v1, p0, Lx0/c;->a:I

    sub-int/2addr v1, v0

    if-nez v1, :cond_0

    iget v0, p0, Lx0/c;->b:I

    iget p1, p1, Lx0/c;->b:I

    sub-int v1, v0, p1

    :cond_0
    return v1
.end method
