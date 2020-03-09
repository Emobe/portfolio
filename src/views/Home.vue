<template>
  <div class="home">
    <item
      v-for="(section, key) in sections"
      :section="section"
      :title="key"
      :key="key"
      :id="key"
    />
    <div class="side">
      <a href="#about">About</a>
      <a href="#skills">Skills</a>
      <a href="#portfolio">Portfolio</a>
      <a href="#contact">Contact</a>
    </div>
  </div>
</template>

<script>
import Item from "@/components/Item";
export default {
  name: "Home",
  components: { Item },
  data() {
    return {
      sections: {
        about: [["Leeds"], ["Based"], ["Web"], ["Developer"], ["10+ years"]],
        skills: [
          ["HTML"],
          ["Javascript"],
          ["Typescript"],
          ["vue"],
          ["react"],
          ["node"]
        ],
        portfolio: [
          ["Github", "https://github.com/emobe"],
          ["npm", "https://npmjs.com/~emobe"],
          ["LendTech", "https://crunchbase.com/organization/zikher-inc-"]
        ],
        contact: [
          ["Email", "mailto:anthony@emobe.uk"],
          ["LinkedIn", "https://www.linkedin.com/in/anthony-shuker"]
        ]
      }
    };
  }
};
</script>
<style lang="scss" scoped>
.home {
  background-color: black;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
}

.side {
  a {
    color: black;
    margin: 10px 0;
    font-size: 3vw;
  }
  position: fixed;
  width: 20vw;
  height: 100vh;
  background-color: white;
  right: 0;
  display: flex;
  flex-direction: column;
  font-weight: bold;
  padding: 15px;
  box-sizing: border-box;
}
</style>
