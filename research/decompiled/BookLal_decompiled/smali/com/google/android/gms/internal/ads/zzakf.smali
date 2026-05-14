.class final Lcom/google/android/gms/internal/ads/zzakf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzake;


# instance fields
.field private final zza:[J

.field private final zzb:[J

.field private final zzc:J

.field private final zzd:J

.field private final zze:I


# direct methods
.method private constructor <init>([J[JJJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakf;->zza:[J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzb:[J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzc:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzd:J

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzakf;->zze:I

    return-void
.end method

.method public static zzd(JJLcom/google/android/gms/internal/ads/zzagc;Lcom/google/android/gms/internal/ads/zzes;)Lcom/google/android/gms/internal/ads/zzakf;
    .locals 24

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v4

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzagc;->zzc:I

    int-to-long v5, v5

    int-to-long v7, v4

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzes;->zzB()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    iget v9, v2, Lcom/google/android/gms/internal/ads/zzagc;->zzd:I

    iget v10, v2, Lcom/google/android/gms/internal/ads/zzagc;->zzg:I

    int-to-long v10, v10

    int-to-long v12, v4

    mul-long/2addr v12, v10

    const-wide/16 v10, -0x1

    add-long/2addr v12, v10

    invoke-static {v12, v13, v9}, Lcom/google/android/gms/internal/ads/zzfk;->zzr(JI)J

    move-result-wide v17

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v4

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v9

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v12

    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzes;->zzk(I)V

    iget v14, v2, Lcom/google/android/gms/internal/ads/zzagc;->zzc:I

    int-to-long v14, v14

    add-long v14, p2, v14

    new-array v10, v4, [J

    new-array v11, v4, [J

    const/16 v16, 0x0

    move/from16 v13, v16

    :goto_0
    if-ge v13, v4, :cond_5

    int-to-long v2, v13

    mul-long v2, v2, v17

    int-to-long v0, v4

    div-long/2addr v2, v0

    aput-wide v2, v10, v13

    aput-wide v14, v11, v13

    const/4 v0, 0x1

    if-eq v12, v0, :cond_4

    const/4 v0, 0x2

    if-eq v12, v0, :cond_3

    const/4 v1, 0x3

    if-eq v12, v1, :cond_2

    const/4 v1, 0x4

    if-eq v12, v1, :cond_1

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzes;->zzH()I

    move-result v1

    goto :goto_2

    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzes;->zzx()I

    move-result v1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzes;->zzt()I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/zzes;->zzs()I

    move-result v1

    :goto_2
    int-to-long v2, v9

    int-to-long v0, v1

    mul-long/2addr v0, v2

    add-long/2addr v14, v0

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    goto :goto_0

    :cond_5
    add-long v0, p2, v5

    add-long/2addr v7, v0

    const-wide/16 v4, -0x1

    move-wide/from16 v2, p0

    cmp-long v4, v2, v4

    const-string v5, "VbriSeeker"

    const-string v6, ", "

    if-eqz v4, :cond_6

    cmp-long v4, v2, v7

    if-eqz v4, :cond_6

    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v4, v4, 0x1b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v12, Ljava/lang/StringBuilder;

    add-int/2addr v4, v9

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "VBRI data size mismatch: "

    invoke-static {v12, v4, v2, v3, v6}, Lcom/google/android/gms/ads/internal/util/client/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    cmp-long v2, v7, v14

    if-eqz v2, :cond_7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x2b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "VBRI bytes and ToC mismatch (using max): "

    invoke-static {v2, v3, v7, v8, v6}, Lcom/google/android/gms/ads/internal/util/client/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\nSeeking will be inaccurate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-wide/from16 v21, v2

    goto :goto_3

    :cond_7
    move-wide/from16 v21, v7

    :goto_3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzakf;

    move-object/from16 v3, p4

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzagc;->zzf:I

    move-object v14, v2

    move-object v15, v10

    move-object/from16 v16, v11

    move-wide/from16 v19, v0

    move/from16 v23, v3

    invoke-direct/range {v14 .. v23}, Lcom/google/android/gms/internal/ads/zzakf;-><init>([J[JJJJI)V

    return-object v2
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzc:J

    return-wide v0
.end method

.method public final zzb()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzc(J)Lcom/google/android/gms/internal/ads/zzagh;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakf;->zza:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzfk;->zzm([JJZZ)I

    move-result v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzagk;

    aget-wide v4, v0, v2

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzb:[J

    aget-wide v7, v6, v2

    invoke-direct {v3, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzagk;-><init>(JJ)V

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/zzagk;->zzb:J

    cmp-long p1, v4, p1

    if-gez p1, :cond_1

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v2, v1

    new-instance p1, Lcom/google/android/gms/internal/ads/zzagk;

    aget-wide v4, v0, v2

    aget-wide v0, v6, v2

    invoke-direct {p1, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzagk;-><init>(JJ)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzagh;

    invoke-direct {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzagh;-><init>(Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/internal/ads/zzagk;)V

    return-object p2

    :cond_1
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzagh;

    invoke-direct {p1, v3, v3}, Lcom/google/android/gms/internal/ads/zzagh;-><init>(Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/internal/ads/zzagk;)V

    return-object p1
.end method

.method public final zze(J)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzb:[J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakf;->zza:[J

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2, v2}, Lcom/google/android/gms/internal/ads/zzfk;->zzm([JJZZ)I

    move-result p1

    aget-wide p1, v1, p1

    return-wide p1
.end method

.method public final zzf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzakf;->zzd:J

    return-wide v0
.end method

.method public final zzg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzakf;->zze:I

    return v0
.end method
