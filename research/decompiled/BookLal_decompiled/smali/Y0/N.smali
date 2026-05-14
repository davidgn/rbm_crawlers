.class public final synthetic LY0/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LY0/N;->a:I

    iput-object p1, p0, LY0/N;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, LY0/N;->a:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/firebase/firestore/model/Document;

    move-object/from16 v2, p2

    check-cast v2, Lcom/google/firebase/firestore/model/Document;

    iget-object v3, v0, LY0/N;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v3, v1, v2}, Lcom/google/firebase/firestore/model/DocumentSet;->a(Ljava/util/Comparator;Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)I

    move-result v1

    return v1

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/firebase/firestore/core/DocumentViewChange;

    move-object/from16 v2, p2

    check-cast v2, Lcom/google/firebase/firestore/core/DocumentViewChange;

    iget-object v3, v0, LY0/N;->b:Ljava/lang/Object;

    check-cast v3, Lcom/google/firebase/firestore/core/View;

    invoke-static {v3, v1, v2}, Lcom/google/firebase/firestore/core/View;->a(Lcom/google/firebase/firestore/core/View;Lcom/google/firebase/firestore/core/DocumentViewChange;Lcom/google/firebase/firestore/core/DocumentViewChange;)I

    move-result v1

    return v1

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lcom/google/firebase/firestore/DocumentSnapshot;

    move-object/from16 v2, p2

    check-cast v2, Lcom/google/firebase/firestore/DocumentSnapshot;

    iget-object v3, v0, LY0/N;->b:Ljava/lang/Object;

    check-cast v3, LY0/O;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "time"

    invoke-virtual {v1, v4}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4}, Lcom/google/firebase/firestore/DocumentSnapshot;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    if-nez v5, :cond_0

    move-object v5, v6

    :cond_0
    if-nez v4, :cond_1

    move-object v4, v6

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v3, LY0/O;->d:Lcom/booklal/booklal/Dashboard;

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->E:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v4, v3, Lcom/booklal/booklal/Dashboard;->F:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-string v4, "Latitude"

    invoke-virtual {v1, v4}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-string v13, "Longitude"

    invoke-virtual {v1, v13}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-static/range {v5 .. v12}, LK1/a;->a(DDDD)D

    move-result-wide v5

    iget-object v1, v3, Lcom/booklal/booklal/Dashboard;->E:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iget-object v1, v3, Lcom/booklal/booklal/Dashboard;->F:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-virtual {v2, v4}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    invoke-virtual {v2, v13}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    invoke-static/range {v14 .. v21}, LK1/a;->a(DDDD)D

    move-result-wide v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    :goto_0
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
