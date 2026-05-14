.class public final Lcom/google/android/gms/internal/ads/zzaaj;
.super Lcom/google/android/gms/internal/ads/zzaap;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzmu;


# static fields
.field public static final synthetic zzb:I

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgxg;


# instance fields
.field public final zza:Landroid/content/Context;

.field private final zzd:Ljava/lang/Object;

.field private zze:Lcom/google/android/gms/internal/ads/zzzu;

.field private zzf:Ljava/lang/Thread;

.field private zzg:Lcom/google/android/gms/internal/ads/zzzy;

.field private zzh:Lcom/google/android/gms/internal/ads/zzd;

.field private zzi:Ljava/lang/Boolean;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzzc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzzp;->zza:Lcom/google/android/gms/internal/ads/zzzp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxg;->zzc(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgxg;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaaj;->zzc:Lcom/google/android/gms/internal/ads/zzgxg;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzc;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzzu;->zzJ:Lcom/google/android/gms/internal/ads/zzzu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaap;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzd:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zza:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzj:Lcom/google/android/gms/internal/ads/zzzc;

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zze:Lcom/google/android/gms/internal/ads/zzzu;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzt;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzzt;-><init>(Lcom/google/android/gms/internal/ads/zzzu;[B)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzzt;->zzx(Lcom/google/android/gms/internal/ads/zzbl;)Lcom/google/android/gms/internal/ads/zzzt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzzu;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzzu;-><init>(Lcom/google/android/gms/internal/ads/zzzt;[B)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zze:Lcom/google/android/gms/internal/ads/zzzu;

    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzd;->zza:Lcom/google/android/gms/internal/ads/zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zze:Lcom/google/android/gms/internal/ads/zzzu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzzu;->zzU:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static zzi(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzj(Lcom/google/android/gms/internal/ads/zzv;Ljava/lang/String;Z)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaaj;->zzi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzv;->zzd:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaaj;->zzi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    const-string p2, "-"

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    return v0
.end method

.method public static synthetic zzm(II)I
    .locals 0

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static synthetic zzn(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzgvm;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzv;->zzc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzx;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzx;->zzb:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const v1, 0x7fffffff

    :goto_2
    return v1
.end method

.method public static synthetic zzo()Lcom/google/android/gms/internal/ads/zzgxg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaaj;->zzc:Lcom/google/android/gms/internal/ads/zzgxg;

    return-object v0
.end method

.method private final zzu()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zze:Lcom/google/android/gms/internal/ads/zzzu;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzzu;->zzU:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x20

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzg:Lcom/google/android/gms/internal/ads/zzzy;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzy;->zza()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaas;->zzs()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static zzv(Lcom/google/android/gms/internal/ads/zzyw;Lcom/google/android/gms/internal/ads/zzbl;Ljava/util/Map;)V
    .locals 2

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzb:I

    if-ge p2, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzyw;->zza(I)Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbl;->zzH:Lcom/google/android/gms/internal/ads/zzgvp;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgvp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbh;

    if-nez v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method private static final zzw(ILcom/google/android/gms/internal/ads/zzaao;[[[ILcom/google/android/gms/internal/ads/zzaaa;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_7

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaao;->zza(I)I

    move-result v5

    move/from16 v6, p0

    if-ne v6, v5, :cond_6

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaao;->zzb(I)Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v5

    const/4 v7, 0x0

    :goto_1
    iget v8, v5, Lcom/google/android/gms/internal/ads/zzyw;->zzb:I

    if-ge v7, v8, :cond_6

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzyw;->zza(I)Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v8

    aget-object v9, p2, v3

    aget-object v9, v9, v7

    move-object/from16 v10, p3

    invoke-interface {v10, v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzaaa;->zza(ILcom/google/android/gms/internal/ads/zzbg;[I)Ljava/util/List;

    move-result-object v9

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzbg;->zza:I

    new-array v11, v8, [Z

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v8, :cond_5

    add-int/lit8 v13, v12, 0x1

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzaab;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzaab;->zza()I

    move-result v15

    aget-boolean v12, v11, v12

    if-nez v12, :cond_4

    if-nez v15, :cond_0

    goto :goto_6

    :cond_0
    const/4 v12, 0x1

    if-ne v15, v12, :cond_1

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzgvm;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v12

    goto :goto_5

    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v13

    :goto_3
    if-ge v2, v8, :cond_3

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lcom/google/android/gms/internal/ads/zzaab;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzaab;->zza()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzaab;->zzc(Lcom/google/android/gms/internal/ads/zzaab;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    aput-boolean v0, v11, v2

    goto :goto_4

    :cond_2
    const/4 v0, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v12, v0

    move-object/from16 v0, p1

    goto :goto_3

    :cond_3
    move-object v12, v15

    :goto_5
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_6
    move-object/from16 v0, p1

    move v12, v13

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    goto :goto_1

    :cond_6
    move-object/from16 v10, p3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    move-object/from16 v0, p4

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaab;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzaab;->zzc:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaab;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaak;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzaab;->zzb:Lcom/google/android/gms/internal/ads/zzbg;

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzaak;-><init>(Lcom/google/android/gms/internal/ads/zzbg;[II)V

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaab;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzmt;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzd:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zze:Lcom/google/android/gms/internal/ads/zzzu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzzu;->zzY:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzf:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "DefaultTrackSelector is accessed on the wrong thread."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgsj;->zzj(ZLjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzg:Lcom/google/android/gms/internal/ads/zzzy;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzy;->zze()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzg:Lcom/google/android/gms/internal/ads/zzzy;

    :cond_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzaas;->zzb()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzzu;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zze:Lcom/google/android/gms/internal/ads/zzzu;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaaj;->zzu()V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzzt;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzu;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzzu;-><init>(Lcom/google/android/gms/internal/ads/zzzt;[B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzd:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zze:Lcom/google/android/gms/internal/ads/zzzu;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzzu;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zze:Lcom/google/android/gms/internal/ads/zzzu;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzzu;->zzU:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zza:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaas;->zzs()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzmu;
    .locals 0

    return-object p0
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzaao;[[[I[ILcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzbf;)Landroid/util/Pair;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaaj;->zzd:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzaaj;->zzf:Ljava/lang/Thread;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzaaj;->zze:Lcom/google/android/gms/internal/ads/zzzu;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaaj;->zzi:Ljava/lang/Boolean;

    if-nez v5, :cond_0

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaaj;->zza:Landroid/content/Context;

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfk;->zzM(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzaaj;->zzi:Ljava/lang/Boolean;

    :cond_0
    iget-boolean v5, v6, Lcom/google/android/gms/internal/ads/zzzu;->zzU:Z

    if-eqz v5, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x20

    if-lt v5, v7, :cond_1

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaaj;->zzg:Lcom/google/android/gms/internal/ads/zzzy;

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaaj;->zza:Landroid/content/Context;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzzy;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaaj;->zzi:Ljava/lang/Boolean;

    invoke-direct {v7, v5, v1, v8}, Lcom/google/android/gms/internal/ads/zzzy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaaj;Ljava/lang/Boolean;)V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzaaj;->zzg:Lcom/google/android/gms/internal/ads/zzzy;

    :cond_1
    const/4 v5, 0x2

    new-array v7, v5, [Lcom/google/android/gms/internal/ads/zzaak;

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v5, :cond_3

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzaao;->zza(I)I

    move-result v10

    if-ne v10, v5, :cond_2

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzaao;->zzb(I)Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v10

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzyw;->zzb:I

    if-lez v10, :cond_2

    move v9, v4

    goto :goto_1

    :cond_2
    add-int/2addr v9, v4

    goto :goto_0

    :cond_3
    move v9, v8

    :goto_1
    new-instance v10, Lcom/google/android/gms/internal/ads/zzzl;

    invoke-direct {v10, v1, v6, v9, v3}, Lcom/google/android/gms/internal/ads/zzzl;-><init>(Lcom/google/android/gms/internal/ads/zzaaj;Lcom/google/android/gms/internal/ads/zzzu;Z[I)V

    sget-object v9, Lcom/google/android/gms/internal/ads/zzzh;->zza:Lcom/google/android/gms/internal/ads/zzzh;

    invoke-static {v4, v0, v2, v10, v9}, Lcom/google/android/gms/internal/ads/zzaaj;->zzw(ILcom/google/android/gms/internal/ads/zzaao;[[[ILcom/google/android/gms/internal/ads/zzaaa;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/ads/zzaak;

    aput-object v11, v7, v10

    :cond_4
    if-nez v9, :cond_5

    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v9

    check-cast v11, Lcom/google/android/gms/internal/ads/zzaak;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzaak;->zza:Lcom/google/android/gms/internal/ads/zzbg;

    check-cast v9, Lcom/google/android/gms/internal/ads/zzaak;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzaak;->zzb:[I

    aget v9, v9, v8

    invoke-virtual {v11, v9}, Lcom/google/android/gms/internal/ads/zzbg;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzv;->zzd:Ljava/lang/String;

    :goto_2
    iget-object v11, v6, Lcom/google/android/gms/internal/ads/zzbl;->zzw:Lcom/google/android/gms/internal/ads/zzbj;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzbj;->zzb:I

    iget-boolean v11, v6, Lcom/google/android/gms/internal/ads/zzbl;->zzk:Z

    if-eqz v11, :cond_6

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzaaj;->zza:Landroid/content/Context;

    if-eqz v11, :cond_6

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzfk;->zzO(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v11

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    new-instance v12, Lcom/google/android/gms/internal/ads/zzzq;

    invoke-direct {v12, v6, v9, v3, v11}, Lcom/google/android/gms/internal/ads/zzzq;-><init>(Lcom/google/android/gms/internal/ads/zzzu;Ljava/lang/String;[ILandroid/graphics/Point;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzzk;->zza:Lcom/google/android/gms/internal/ads/zzzk;

    invoke-static {v5, v0, v2, v12, v3}, Lcom/google/android/gms/internal/ads/zzaaj;->zzw(ILcom/google/android/gms/internal/ads/zzaao;[[[ILcom/google/android/gms/internal/ads/zzaaa;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v3

    const/4 v11, 0x4

    if-nez v3, :cond_7

    new-instance v12, Lcom/google/android/gms/internal/ads/zzzn;

    invoke-direct {v12, v6}, Lcom/google/android/gms/internal/ads/zzzn;-><init>(Lcom/google/android/gms/internal/ads/zzzu;)V

    sget-object v13, Lcom/google/android/gms/internal/ads/zzzi;->zza:Lcom/google/android/gms/internal/ads/zzzi;

    invoke-static {v11, v0, v2, v12, v13}, Lcom/google/android/gms/internal/ads/zzaaj;->zzw(ILcom/google/android/gms/internal/ads/zzaao;[[[ILcom/google/android/gms/internal/ads/zzaaa;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v12

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_8

    iget-object v3, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/ads/zzaak;

    aput-object v12, v7, v3

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_9

    iget-object v12, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaak;

    aput-object v3, v7, v12

    :cond_9
    :goto_5
    iget-boolean v3, v6, Lcom/google/android/gms/internal/ads/zzbl;->zzB:Z

    if-eqz v3, :cond_a

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzaaj;->zza:Landroid/content/Context;

    if-nez v3, :cond_b

    :cond_a
    :goto_6
    const/4 v3, 0x0

    goto :goto_7

    :cond_b
    const-string v12, "captioning"

    invoke-virtual {v3, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/CaptioningManager;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    if-nez v3, :cond_d

    goto :goto_6

    :cond_d
    sget-object v12, Lcom/google/android/gms/internal/ads/zzfk;->zza:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    :goto_7
    new-instance v12, Lcom/google/android/gms/internal/ads/zzzm;

    invoke-direct {v12, v6, v9, v3}, Lcom/google/android/gms/internal/ads/zzzm;-><init>(Lcom/google/android/gms/internal/ads/zzzu;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzzj;->zza:Lcom/google/android/gms/internal/ads/zzzj;

    const/4 v9, 0x3

    invoke-static {v9, v0, v2, v12, v3}, Lcom/google/android/gms/internal/ads/zzaaj;->zzw(ILcom/google/android/gms/internal/ads/zzaao;[[[ILcom/google/android/gms/internal/ads/zzaaa;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v12, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaak;

    aput-object v3, v7, v12

    :cond_e
    move v3, v8

    :goto_8
    if-ge v3, v5, :cond_15

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaao;->zza(I)I

    move-result v12

    if-eq v12, v5, :cond_14

    if-eq v12, v4, :cond_14

    if-eq v12, v9, :cond_14

    if-eq v12, v11, :cond_14

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaao;->zzb(I)Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v12

    aget-object v13, v2, v3

    move v14, v8

    move/from16 v16, v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_9
    iget v9, v12, Lcom/google/android/gms/internal/ads/zzyw;->zzb:I

    if-ge v14, v9, :cond_12

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzyw;->zza(I)Lcom/google/android/gms/internal/ads/zzbg;

    move-result-object v9

    aget-object v18, v13, v14

    move v10, v8

    move-object/from16 v11, v17

    :goto_a
    iget v5, v9, Lcom/google/android/gms/internal/ads/zzbg;->zza:I

    if-ge v10, v5, :cond_11

    aget v5, v18, v10

    iget-boolean v8, v6, Lcom/google/android/gms/internal/ads/zzzu;->zzV:Z

    invoke-static {v5, v8}, Lcom/google/android/gms/internal/ads/zzmv;->zzac(IZ)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzbg;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v5

    new-instance v8, Lcom/google/android/gms/internal/ads/zzzs;

    aget v4, v18, v10

    invoke-direct {v8, v5, v4}, Lcom/google/android/gms/internal/ads/zzzs;-><init>(Lcom/google/android/gms/internal/ads/zzv;I)V

    if-eqz v11, :cond_f

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzzs;->zza(Lcom/google/android/gms/internal/ads/zzzs;)I

    move-result v4

    if-lez v4, :cond_10

    :cond_f
    move-object v11, v8

    move-object v15, v9

    move/from16 v16, v10

    :cond_10
    const/4 v4, 0x1

    add-int/2addr v10, v4

    const/4 v8, 0x0

    goto :goto_a

    :cond_11
    add-int/2addr v14, v4

    move-object/from16 v17, v11

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v11, 0x4

    goto :goto_9

    :cond_12
    if-nez v15, :cond_13

    const/4 v4, 0x0

    goto :goto_b

    :cond_13
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaak;

    filled-new-array/range {v16 .. v16}, [I

    move-result-object v5

    const/4 v8, 0x0

    invoke-direct {v4, v15, v5, v8}, Lcom/google/android/gms/internal/ads/zzaak;-><init>(Lcom/google/android/gms/internal/ads/zzbg;[II)V

    :goto_b
    aput-object v4, v7, v3

    const/4 v4, 0x1

    :cond_14
    add-int/2addr v3, v4

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v11, 0x4

    goto :goto_8

    :cond_15
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x2

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v3, :cond_16

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzaao;->zzb(I)Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v5

    invoke-static {v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzaaj;->zzv(Lcom/google/android/gms/internal/ads/zzyw;Lcom/google/android/gms/internal/ads/zzbl;Ljava/util/Map;)V

    add-int/2addr v8, v4

    goto :goto_c

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaao;->zze()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v5

    invoke-static {v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzaaj;->zzv(Lcom/google/android/gms/internal/ads/zzyw;Lcom/google/android/gms/internal/ads/zzbl;Ljava/util/Map;)V

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v3, :cond_18

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzaao;->zza(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzbh;

    if-nez v5, :cond_17

    add-int/2addr v8, v4

    goto :goto_d

    :cond_17
    const/4 v4, 0x0

    throw v4

    :cond_18
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v3, :cond_1b

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzaao;->zzb(I)Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v6, v8, v2}, Lcom/google/android/gms/internal/ads/zzzu;->zzb(ILcom/google/android/gms/internal/ads/zzyw;)Z

    move-result v3

    if-nez v3, :cond_19

    :goto_f
    const/4 v2, 0x1

    goto :goto_10

    :cond_19
    invoke-virtual {v6, v8, v2}, Lcom/google/android/gms/internal/ads/zzzu;->zzc(ILcom/google/android/gms/internal/ads/zzyw;)Lcom/google/android/gms/internal/ads/zzzv;

    move-result-object v2

    if-nez v2, :cond_1a

    aput-object v4, v7, v8

    goto :goto_f

    :goto_10
    add-int/2addr v8, v2

    const/4 v3, 0x2

    goto :goto_e

    :cond_1a
    throw v4

    :cond_1b
    move v2, v3

    const/4 v8, 0x0

    :goto_11
    if-ge v8, v2, :cond_1e

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzaao;->zza(I)I

    move-result v2

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzzu;->zza(I)Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, v6, Lcom/google/android/gms/internal/ads/zzbl;->zzI:Lcom/google/android/gms/internal/ads/zzgvw;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzgvi;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    const/4 v4, 0x0

    goto :goto_12

    :cond_1d
    const/4 v2, 0x1

    const/4 v4, 0x0

    goto :goto_13

    :goto_12
    aput-object v4, v7, v8

    const/4 v2, 0x1

    :goto_13
    add-int/2addr v8, v2

    const/4 v2, 0x2

    goto :goto_11

    :cond_1e
    const/4 v4, 0x0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaaj;->zzj:Lcom/google/android/gms/internal/ads/zzzc;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaas;->zzt()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v3

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzzd;->zzd([Lcom/google/android/gms/internal/ads/zzaak;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v5

    const/4 v8, 0x2

    new-array v15, v8, [Lcom/google/android/gms/internal/ads/zzaal;

    const/4 v14, 0x0

    :goto_14
    if-ge v14, v8, :cond_22

    aget-object v8, v7, v14

    if-eqz v8, :cond_21

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzaak;->zzb:[I

    array-length v9, v11

    if-nez v9, :cond_1f

    move/from16 v19, v14

    const/4 v8, 0x1

    const/16 v16, 0x0

    goto :goto_17

    :cond_1f
    const/4 v10, 0x1

    if-ne v9, v10, :cond_20

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzaak;->zza:Lcom/google/android/gms/internal/ads/zzbg;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaam;

    const/16 v16, 0x0

    aget v22, v11, v16

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v9

    move-object/from16 v21, v8

    invoke-direct/range {v20 .. v25}, Lcom/google/android/gms/internal/ads/zzaam;-><init>(Lcom/google/android/gms/internal/ads/zzbg;IIILjava/lang/Object;)V

    move/from16 v19, v14

    goto :goto_15

    :cond_20
    const/16 v16, 0x0

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzaak;->zza:Lcom/google/android/gms/internal/ads/zzbg;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzgvm;

    const/4 v12, 0x0

    move-object v9, v2

    move-object v13, v3

    move/from16 v19, v14

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzzc;->zza(Lcom/google/android/gms/internal/ads/zzbg;[IILcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzgvm;)Lcom/google/android/gms/internal/ads/zzzd;

    move-result-object v9

    :goto_15
    aput-object v9, v15, v19

    :goto_16
    const/4 v8, 0x1

    goto :goto_17

    :cond_21
    move/from16 v19, v14

    const/16 v16, 0x0

    goto :goto_16

    :goto_17
    add-int/lit8 v14, v19, 0x1

    const/4 v8, 0x2

    goto :goto_14

    :cond_22
    const/16 v16, 0x0

    new-array v2, v8, [Lcom/google/android/gms/internal/ads/zzmw;

    move/from16 v3, v16

    :goto_18
    if-ge v3, v8, :cond_26

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaao;->zza(I)I

    move-result v5

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzzu;->zza(I)Z

    move-result v7

    if-nez v7, :cond_23

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzbl;->zzI:Lcom/google/android/gms/internal/ads/zzgvw;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzgvi;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    :cond_23
    move-object v5, v4

    goto :goto_19

    :cond_24
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaao;->zza(I)I

    move-result v5

    const/4 v7, -0x2

    if-eq v5, v7, :cond_25

    aget-object v5, v15, v3

    if-eqz v5, :cond_23

    :cond_25
    sget-object v5, Lcom/google/android/gms/internal/ads/zzmw;->zza:Lcom/google/android/gms/internal/ads/zzmw;

    :goto_19
    aput-object v5, v2, v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_18

    :cond_26
    invoke-static {v2, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final synthetic zzk(Lcom/google/android/gms/internal/ads/zzzu;Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 7

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzzu;->zzU:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzi:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_0
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_7

    const/4 v2, 0x2

    if-le p1, v2, :cond_7

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "audio/eac3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "audio/ac4"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v6

    goto :goto_0

    :sswitch_2
    const-string v5, "audio/ac3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string v5, "audio/eac3-joc"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_3

    if-eq v1, v2, :cond_3

    if-eq v1, v6, :cond_3

    goto :goto_1

    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzg:Lcom/google/android/gms/internal/ads/zzzy;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzy;->zza()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzg:Lcom/google/android/gms/internal/ads/zzzy;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzy;->zza()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzy;->zzb()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzg:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzy;->zzc()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzg:Lcom/google/android/gms/internal/ads/zzzy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaaj;->zzh:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzzy;->zzd(Lcom/google/android/gms/internal/ads/zzd;Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    return v4

    :cond_6
    move v0, v4

    :cond_7
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch
.end method

.method public final synthetic zzl()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaaj;->zzu()V

    return-void
.end method
