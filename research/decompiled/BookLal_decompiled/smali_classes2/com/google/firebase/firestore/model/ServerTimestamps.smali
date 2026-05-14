.class public final Lcom/google/firebase/firestore/model/ServerTimestamps;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOCAL_WRITE_TIME_KEY:Ljava/lang/String; = "__local_write_time__"

.field private static final PREVIOUS_VALUE_KEY:Ljava/lang/String; = "__previous_value__"

.field private static final SERVER_TIMESTAMP_SENTINEL:Ljava/lang/String; = "server_timestamp"

.field private static final TYPE_KEY:Ljava/lang/String; = "__type__"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalWriteTime(LW2/H0;)Lcom/google/protobuf/T0;
    .locals 1

    invoke-virtual {p0}, LW2/H0;->w()LW2/I;

    move-result-object p0

    const-string v0, "__local_write_time__"

    invoke-virtual {p0, v0}, LW2/I;->k(Ljava/lang/String;)LW2/H0;

    move-result-object p0

    invoke-virtual {p0}, LW2/H0;->y()Lcom/google/protobuf/T0;

    move-result-object p0

    return-object p0
.end method

.method public static getPreviousValue(LW2/H0;)LW2/H0;
    .locals 1

    invoke-virtual {p0}, LW2/H0;->w()LW2/I;

    move-result-object p0

    const-string v0, "__previous_value__"

    invoke-virtual {p0, v0}, LW2/I;->j(Ljava/lang/String;)LW2/H0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/firestore/model/ServerTimestamps;->isServerTimestamp(LW2/H0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/firebase/firestore/model/ServerTimestamps;->getPreviousValue(LW2/H0;)LW2/H0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static isServerTimestamp(LW2/H0;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LW2/H0;->w()LW2/I;

    move-result-object p0

    const-string v0, "__type__"

    invoke-virtual {p0, v0}, LW2/I;->j(Ljava/lang/String;)LW2/H0;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-string v0, "server_timestamp"

    invoke-virtual {p0}, LW2/H0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static valueOf(Lcom/google/firebase/Timestamp;LW2/H0;)LW2/H0;
    .locals 5

    invoke-static {}, LW2/H0;->A()LW2/F0;

    move-result-object v0

    const-string v1, "server_timestamp"

    invoke-virtual {v0, v1}, LW2/F0;->o(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object v0

    check-cast v0, LW2/H0;

    invoke-static {}, LW2/H0;->A()LW2/F0;

    move-result-object v1

    invoke-static {}, Lcom/google/protobuf/T0;->k()Lcom/google/protobuf/S0;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/protobuf/S0;->d(J)V

    invoke-virtual {p0}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/google/protobuf/S0;->c(I)V

    invoke-virtual {v1, v2}, LW2/F0;->p(Lcom/google/protobuf/S0;)V

    invoke-virtual {v1}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, LW2/H0;

    invoke-static {}, LW2/I;->l()LW2/G;

    move-result-object v1

    const-string v2, "__type__"

    invoke-virtual {v1, v0, v2}, LW2/G;->e(LW2/H0;Ljava/lang/String;)V

    const-string v0, "__local_write_time__"

    invoke-virtual {v1, p0, v0}, LW2/G;->e(LW2/H0;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/firebase/firestore/model/ServerTimestamps;->isServerTimestamp(LW2/H0;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/google/firebase/firestore/model/ServerTimestamps;->getPreviousValue(LW2/H0;)LW2/H0;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "__previous_value__"

    invoke-virtual {v1, p1, p0}, LW2/G;->e(LW2/H0;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, LW2/H0;->A()LW2/F0;

    move-result-object p0

    invoke-virtual {p0, v1}, LW2/F0;->k(LW2/G;)V

    invoke-virtual {p0}, Lcom/google/protobuf/F;->build()Lcom/google/protobuf/K;

    move-result-object p0

    check-cast p0, LW2/H0;

    return-object p0
.end method
