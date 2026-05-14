.class public final Lcom/google/android/gms/internal/ads/zzxk;
.super Lcom/google/android/gms/internal/ads/zzwb;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzak;


# instance fields
.field private final zzb:[Lcom/google/android/gms/internal/ads/zzwv;

.field private final zzc:Ljava/util/List;

.field private final zzd:[Lcom/google/android/gms/internal/ads/zzbf;

.field private final zze:Ljava/util/ArrayList;

.field private zzf:I

.field private zzg:[[J

.field private zzh:Lcom/google/android/gms/internal/ads/zzxi;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzwe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    const-string v1, "MergingMediaSource"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzz;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzz;->zzc()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxk;->zza:Lcom/google/android/gms/internal/ads/zzak;

    return-void
.end method

.method public varargs constructor <init>(ZZLcom/google/android/gms/internal/ads/zzwe;[Lcom/google/android/gms/internal/ads/zzwv;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwb;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzb:[Lcom/google/android/gms/internal/ads/zzwv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzi:Lcom/google/android/gms/internal/ads/zzwe;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zze:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzf:I

    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p4

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzc:Ljava/util/List;

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    array-length p3, p4

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzc:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-array p2, p3, [Lcom/google/android/gms/internal/ads/zzbf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzd:[Lcom/google/android/gms/internal/ads/zzbf;

    new-array p1, p1, [[J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzg:[[J

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/16 p1, 0x8

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgxb;->zzb(I)Lcom/google/android/gms/internal/ads/zzgxa;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgxa;->zzb(I)Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgwy;->zza()Lcom/google/android/gms/internal/ads/zzgwh;

    return-void
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/internal/ads/zzak;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzb:[Lcom/google/android/gms/internal/ads/zzwv;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwv;->zzA(Lcom/google/android/gms/internal/ads/zzak;)V

    return-void
.end method

.method public final zzD(Lcom/google/android/gms/internal/ads/zzwr;)V
    .locals 7

    check-cast p1, Lcom/google/android/gms/internal/ads/zzxh;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzb:[Lcom/google/android/gms/internal/ads/zzwv;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzc:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzxh;->zza(I)Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v4

    move v5, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzxj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzxj;->zzb()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    aget-object v2, v2, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzxh;->zza(I)Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzwv;->zzD(Lcom/google/android/gms/internal/ads/zzwr;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final zzG(Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzaaw;J)Lcom/google/android/gms/internal/ads/zzwr;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzd:[Lcom/google/android/gms/internal/ads/zzbf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzb:[Lcom/google/android/gms/internal/ads/zzwv;

    array-length v2, v1

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzwr;

    const/4 v4, 0x0

    aget-object v5, v0, v4

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzwt;->zza:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result v5

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, v0, v4

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbf;->zzf(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzwt;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object v6

    aget-object v7, v1, v4

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzg:[[J

    aget-object v8, v8, v5

    aget-wide v9, v8, v4

    sub-long v8, p3, v9

    invoke-interface {v7, v6, p2, v8, v9}, Lcom/google/android/gms/internal/ads/zzwv;->zzG(Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzaaw;J)Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v7

    aput-object v7, v3, v4

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzc:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzxj;

    aget-object v9, v3, v4

    const/4 v10, 0x0

    invoke-direct {v8, v6, v9, v10}, Lcom/google/android/gms/internal/ads/zzxj;-><init>(Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzwr;[B)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzi:Lcom/google/android/gms/internal/ads/zzwe;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzxh;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzg:[[J

    aget-object p3, p3, v5

    invoke-direct {p2, p1, p3, v3}, Lcom/google/android/gms/internal/ads/zzxh;-><init>(Lcom/google/android/gms/internal/ads/zzwe;[J[Lcom/google/android/gms/internal/ads/zzwr;)V

    return-object p2
.end method

.method public final zzJ()Lcom/google/android/gms/internal/ads/zzak;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzb:[Lcom/google/android/gms/internal/ads/zzwv;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwv;->zzJ()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzxk;->zza:Lcom/google/android/gms/internal/ads/zzak;

    :goto_0
    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzig;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzwb;->zza(Lcom/google/android/gms/internal/ads/zzig;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzb:[Lcom/google/android/gms/internal/ads/zzwv;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aget-object v0, v0, p1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzwb;->zzv(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwv;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzd()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzwb;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzd:[Lcom/google/android/gms/internal/ads/zzbf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzf:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzh:Lcom/google/android/gms/internal/ads/zzxi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zze:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzb:[Lcom/google/android/gms/internal/ads/zzwv;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzt()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzh:Lcom/google/android/gms/internal/ads/zzxi;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzwb;->zzt()V

    return-void

    :cond_0
    throw v0
.end method

.method public final bridge synthetic zzu(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwv;Lcom/google/android/gms/internal/ads/zzbf;)V
    .locals 5

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzh:Lcom/google/android/gms/internal/ads/zzxi;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzf:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbf;->zzc()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzf:I

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbf;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzf:I

    if-eq v0, v1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzxi;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzxi;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzh:Lcom/google/android/gms/internal/ads/zzxi;

    return-void

    :cond_2
    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzg:[[J

    array-length v1, v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzd:[Lcom/google/android/gms/internal/ads/zzbf;

    array-length v1, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzg:[[J

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zze:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzd:[Lcom/google/android/gms/internal/ads/zzbf;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, p2, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    aget-object p1, p2, v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzvs;->zze(Lcom/google/android/gms/internal/ads/zzbf;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final bridge synthetic zzx(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzwt;)Lcom/google/android/gms/internal/ads/zzwt;
    .locals 4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxk;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzxj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzxj;->zza()Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzwt;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzxj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzxj;->zza()Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object p1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
