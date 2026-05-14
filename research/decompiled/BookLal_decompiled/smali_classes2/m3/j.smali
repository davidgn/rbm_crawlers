.class public final Lm3/j;
.super Ll3/b;
.source "SourceFile"


# static fields
.field public static final r:LQ4/g;


# instance fields
.field public final j:Lj3/h0;

.field public final k:Ljava/lang/String;

.field public final l:Ll3/N1;

.field public final m:Ljava/lang/String;

.field public final n:Lm3/i;

.field public final o:Li1/D;

.field public final p:Lj3/b;

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LQ4/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm3/j;->r:LQ4/g;

    return-void
.end method

.method public constructor <init>(Lj3/h0;Lj3/f0;Lm3/d;Lm3/n;Lm3/w;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Ll3/N1;Ll3/R1;Lj3/g;)V
    .locals 11

    move-object v9, p0

    move-object v7, p1

    new-instance v1, Ld3/a;

    const/16 v0, 0x18

    invoke-direct {v1, v0}, Ld3/a;-><init>(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object v4, p2

    move-object/from16 v5, p13

    invoke-direct/range {v0 .. v6}, Ll3/b;-><init>(Ld3/a;Ll3/N1;Ll3/R1;Lj3/f0;Lj3/g;Z)V

    new-instance v0, Li1/D;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Li1/D;-><init>(Ljava/lang/Object;I)V

    iput-object v0, v9, Lm3/j;->o:Li1/D;

    const/4 v0, 0x0

    iput-boolean v0, v9, Lm3/j;->q:Z

    move-object/from16 v3, p11

    iput-object v3, v9, Lm3/j;->l:Ll3/N1;

    iput-object v7, v9, Lm3/j;->j:Lj3/h0;

    move-object/from16 v0, p9

    iput-object v0, v9, Lm3/j;->m:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, v9, Lm3/j;->k:Ljava/lang/String;

    move-object v8, p4

    iget-object v0, v8, Lm3/n;->u:Lj3/b;

    iput-object v0, v9, Lm3/j;->p:Lj3/b;

    new-instance v10, Lm3/i;

    iget-object v0, v7, Lj3/h0;->b:Ljava/lang/String;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p7

    move-object/from16 v3, p11

    move-object/from16 v4, p6

    move-object v5, p3

    move-object/from16 v6, p5

    move-object v7, p4

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lm3/i;-><init>(Lm3/j;ILl3/N1;Ljava/lang/Object;Lm3/d;Lm3/w;Lm3/n;I)V

    iput-object v10, v9, Lm3/j;->n:Lm3/i;

    return-void
.end method


# virtual methods
.method public final k()Lj3/b;
    .locals 1

    iget-object v0, p0, Lm3/j;->p:Lj3/b;

    return-object v0
.end method
