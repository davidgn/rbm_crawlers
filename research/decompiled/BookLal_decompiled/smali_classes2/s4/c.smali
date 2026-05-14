.class public final Ls4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/d;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:Lkotlin/jvm/internal/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls4/c;->a:Ljava/lang/String;

    iput p2, p0, Ls4/c;->b:I

    iput p3, p0, Ls4/c;->c:I

    check-cast p4, Lkotlin/jvm/internal/j;

    iput-object p4, p0, Ls4/c;->d:Lkotlin/jvm/internal/j;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Ls4/b;

    invoke-direct {v0, p0}, Ls4/b;-><init>(Ls4/c;)V

    return-object v0
.end method
