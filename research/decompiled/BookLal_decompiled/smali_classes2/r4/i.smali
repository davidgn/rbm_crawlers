.class public final Lr4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ll4/a;


# instance fields
.field public final synthetic a:Ls4/c;


# direct methods
.method public constructor <init>(Ls4/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/i;->a:Ls4/c;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lr4/i;->a:Ls4/c;

    new-instance v1, Ls4/b;

    invoke-direct {v1, v0}, Ls4/b;-><init>(Ls4/c;)V

    return-object v1
.end method
