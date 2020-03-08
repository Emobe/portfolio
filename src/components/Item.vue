<template>
  <div class="name item">
    <h2>{{ title }}</h2>
    <ul>
      <li v-for="item in section" :key="item[1]">
        <a v-if="item[1]" :href="item[1]">
          {{ item[0] }}
        </a>
        <span v-else>
          {{ item[0] }}
        </span>
      </li>
    </ul>
  </div>
</template>
<script lang="ts">
import { Component, Prop, Vue } from "vue-property-decorator";

@Component
export default class Item extends Vue {
  @Prop(Array) readonly section!: string[];
  @Prop(String) readonly title!: string;
}
</script>
<style lang="scss" scoped>
$padding: 27px;
h2 {
  font-size: 9vw;
  color: grey;
  padding-left: $padding;
  margin-bottom: 10px;
}
a {
  color: whitesmoke;
  &:hover {
    color: grey;
  }
}
.item {
  font-size: 10vw;
  text-transform: uppercase;
  font-weight: bold;
  color: whitesmoke;
  margin-bottom: 50px;
  ul {
    list-style-type: none;
    margin-top: 0;
    padding-left: $padding;
  }
}
</style>
