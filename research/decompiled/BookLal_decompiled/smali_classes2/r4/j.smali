.class public final Lr4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/d;


# instance fields
.field public final a:Ls4/c;

.field public final b:LB4/g;


# direct methods
.method public constructor <init>(Ls4/c;LB4/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/j;->a:Ls4/c;

    iput-object p2, p0, Lr4/j;->b:LB4/g;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LM/D;

    invoke-direct {v0, p0}, LM/D;-><init>(Lr4/j;)V

    return-object v0
.end method
